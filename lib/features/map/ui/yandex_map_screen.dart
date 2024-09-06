import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:foodka_client/core/utils/utils.dart';

import '../../../data/services/services.dart';
import 'widgets/widgets.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool _isFetchingAddress = true;

  YandexMapController? _yandexMapController;
  Point? _userCurrentPosition;

  void _onMapCreated(YandexMapController yandexMapController) {
    _yandexMapController = yandexMapController;
    if (_userCurrentPosition != null) {
      _yandexMapController?.moveCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: _userCurrentPosition!, zoom: 17),
        ),
      );
    }
  }

  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 100,
  );

  late StreamSubscription<Position> positionStream;

  @override
  void initState() {
    super.initState();
    LocationService.determinePosition().then(
      (value) async {
        if (value != null) {
          _userCurrentPosition = Point(
            latitude: value.latitude,
            longitude: value.longitude,
          );
        }
      },
    ).catchError((error) {
      if (!mounted) return;

      showDialog(
        context: context,
        builder: (context) => ShowErrorDialog(errorText: error.toString()),
      );
    }).whenComplete(
      () {
        _isFetchingAddress = false;
        setState(() {});
      },
    );
  }


  void _onMyLocationTapped() {
    if (_userCurrentPosition != null || _yandexMapController != null) {
      _yandexMapController!.moveCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: _userCurrentPosition!, zoom: 17),
        ),
      );
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New address'),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              showSearch(context: context, delegate: SearchPlaceByName());
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: FlutterLogo(),
            ),
          ),
          Expanded(
            child: _isFetchingAddress
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.brand500,
                      strokeWidth: 3,
                    ),
                  )
                : Stack(
                    children: [
                      YandexMap(
                        nightModeEnabled: true,
                        onMapCreated: _onMapCreated,
                        zoomGesturesEnabled: true,
                        mapObjects: [
                          PlacemarkMapObject(
                            mapId: const MapObjectId('current_location'),
                            point: _userCurrentPosition!,
                            icon: PlacemarkIcon.single(
                              PlacemarkIconStyle(
                                image: BitmapDescriptor.fromAssetImage(
                                    AppAssets.images.user.path),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomZoomButton(
                                isZoomIn: true,
                                onTap: () {
                                  _yandexMapController!.moveCamera(
                                    CameraUpdate.zoomIn(),
                                  );
                                },
                              ),
                              const SizedBox(height: 10),
                              CustomZoomButton(
                                isZoomIn: false,
                                onTap: () {
                                  _yandexMapController!.moveCamera(
                                    CameraUpdate.zoomOut(),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF1C1D22),
          onPressed: _onMyLocationTapped,
          child: const Icon(
            Icons.navigation_outlined,
            color: Color(0xFFCCCCCC),
          ),
        ),
      ),
    );
  }
}
