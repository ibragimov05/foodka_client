import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class SearchPlaceByName extends SearchDelegate<String?> {
  final TextEditingController _searchTextController = TextEditingController();

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSearches
        : searchItems.where((item) => item.startsWith(query)).toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestionList[index]),
          onTap: () {
            query = suggestionList[index];
            showResults(context);
          },
        );
      },
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () => query = '',
      ),
    ];
  }

  final List<String> recentSearches = [
    'apple',
    'banana',
    'orange',
  ];

  final List<String> searchItems = [
    'apple',
    'banana',
    'grape',
    'orange',
    'watermelon',
    'peach',
    'pear',
    'strawberry',
  ];
  Future<SuggestSessionResult> _suggest() async {
    final resultWithSession = await YandexSuggest.getSuggestions(
      text: _searchTextController.text,
      boundingBox: const BoundingBox(
        northEast: Point(latitude: 56.0421, longitude: 38.0284),
        southWest: Point(latitude: 55.5143, longitude: 37.24841),
      ),
      suggestOptions: const SuggestOptions(
        suggestType: SuggestType.geo,
        suggestWords: true,
        userPosition: Point(latitude: 56.0321, longitude: 38),
      ),
    );

    return await resultWithSession.$2;
  }
}
//SizedBox(
//             height: _suggestionList.isNotEmpty ? 200 : 0,
//             child: ListView.builder(
//               itemCount: _suggestionList.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   height: 50,
//                   margin: const EdgeInsets.all(10),
//                   child: Row(
//                     children: [
//                       Text(
//                         _suggestionList[index].subtitle.toString(),
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),

//Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: TextField(
//               controller: _searchTextController,
//               style: const TextStyle(color: Colors.white),
//               onChanged: (value) async {
//                 final res = await _suggest();
//                 if (res.items != null) {
//                   _suggestionList = res.items!.toSet().toList();
//                   setState(() {});
//                 }
//               },
//             ),
//           ),
//
