import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:foodka_client/data/models/models.dart';
import 'package:foodka_client/navigation/app_router.dart';

import 'widgets/widgets.dart';
import '../../../core/utils/utils.dart';
import '../../main/cubit/tab_box_cubit.dart';

part 'widgets/home_page_private_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: _AppBar(),
      ),
      body: CustomScrollView(
        slivers: [
          /// announcement
          const _SliverSizedBox(24),
          const SliverToBoxAdapter(child: _AnnouncementCarouselSlider()),
          const _SliverSizedBox(24),

          /// top categories text
          SliverToBoxAdapter(
            child: FoodTypeTitleTextItem(
              title: 'Top categories',
              onViewAllTap: () {},
            ),
          ),
          const _SliverSizedBox(6),

          /// top categories list view
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              minHeight: 50,
              maxHeight: 50,
              child: const _TopCategoriesListView(),
            ),
          ),
          const _SliverSizedBox(14),

          /// popular products text
          SliverToBoxAdapter(
            child: FoodTypeTitleTextItem(
              title: 'Popular',
              onViewAllTap: () {},
            ),
          ),
          const _SliverSizedBox(16),

          /// popular products list view
          const SliverToBoxAdapter(child: _PopularFoodsListView()),
          const _SliverSizedBox(24),

          /// recommended foods text
          SliverToBoxAdapter(
            child: FoodTypeTitleTextItem(
              title: 'Recommended',
              onViewAllTap: () {},
            ),
          ),
          const _SliverSizedBox(16),

          /// recommended foods list view
          const _RecommendedFoodsListView(),
        ],
      ),
    );
  }
}
