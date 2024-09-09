part of '../home_page.dart';

class _AppBar extends StatelessWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 10.0),
        child: SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, AppRouter.yandexMap),
                child: AppAssets.icons.map.svg(),
              ),
              const Column(
                children: [
                  Text(
                    'Current location',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.greyscale400,
                    ),
                  ),
                  Text(
                    '123 Dream Avenue, NYC',
                    style: TextStyle(
                      color: AppColors.greyscale600,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () =>
                    context.read<TabBoxCubit>().changeTabBoxIndex(newIndex: 3),
                child: AppAssets.icons.searchNormal.svg(),
              ),
            ],
          ),
        ),
      );
}

class _AnnouncementCarouselSlider extends StatelessWidget {
  const _AnnouncementCarouselSlider();

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 130,
        child: CarouselSlider(
          options: CarouselOptions(
            height: double.infinity,
            autoPlay: true,
            viewportFraction: 1,
            autoPlayInterval: const Duration(seconds: 10),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.easeIn,
            pauseAutoPlayOnTouch: true,
            scrollDirection: Axis.horizontal,
          ),
          items: [
            AnnouncementItem(
              label: '\$0 delivery for 30 days! 🥳',
              imagePath: AppAssets.images.announcement.path,
            ),
          ],
        ),
      );
}

class _TopCategoriesListView extends StatelessWidget {
  const _TopCategoriesListView();

  @override
  Widget build(BuildContext context) => Container(
        height: 40,
        decoration: const BoxDecoration(
          color: AppColors.foodkaWhite,
          boxShadow: [
            BoxShadow(
              color: AppColors.foodkaWhite,
              blurRadius: 10,
              spreadRadius: 20,
            ),
          ],
        ),
        child: ListView.separated(
          itemCount: AppAssets.foods.values.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 8),
          itemBuilder: (context, index) => CategoryItem(
            index: index,
            label: AppAssets.foods.values[index].keyName
                .split('/')[3]
                .split('.')[0]
                .capitalize,
            foodImagePath: AppAssets.foods.values[index].path,
          ),
        ),
      );
}

class _PopularFoodsListView extends StatelessWidget {
  const _PopularFoodsListView();

  @override
  Widget build(BuildContext context) {
    final foodItemHeight = DeviceScreen.h(context) / 4;
    final foodItemWidth = DeviceScreen.w(context) / 1.2;

    return SizedBox(
      height: foodItemHeight,
      child: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => 16.sW,
        itemBuilder: (context, index) => FoodItem(
          index: index,
          product: products[0],
          height: foodItemHeight,
          width: foodItemWidth,
        ),
      ),
    );
  }
}

class _RecommendedFoodsListView extends StatelessWidget {
  const _RecommendedFoodsListView();

  @override
  Widget build(BuildContext context) {
    final foodItemHeight = DeviceScreen.h(context) / 4;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: FoodItem(
            index: index,
            product: products[0],
            height: foodItemHeight,
            width: double.infinity,
            isRecommended: true,
          ),
        ),
      ),
    );
  }
}

class _SliverSizedBox extends StatelessWidget {
  final double height;

  const _SliverSizedBox(this.height);

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: SizedBox(height: height),
      );
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(covariant _SliverAppBarDelegate oldDelegate) {
    return oldDelegate.minHeight != minHeight ||
        oldDelegate.maxHeight != maxHeight ||
        oldDelegate.child != child;
  }
}
