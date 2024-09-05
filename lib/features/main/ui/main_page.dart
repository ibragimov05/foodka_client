import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodka_client/features/home/ui/home_page.dart';

import '../cubit/tab_box_cubit.dart';
import '../../../core/utils/utils.dart';
import '../../../core/helpers/helpers.dart';

part 'main_page_part.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  DateTime? _lastPressedAt;

  void _onPopInvoked(bool didPop, Object? result) {
    final now = DateTime.now();
    final backButtonHasNotBeenPressedOrHasBeenPressedLongTimeAgo =
        _lastPressedAt == null ||
            now.difference(_lastPressedAt!) > const Duration(seconds: 2);

    if (backButtonHasNotBeenPressedOrHasBeenPressedLongTimeAgo) {
      if (context.read<TabBoxCubit>().state.tabBoxCurrentIndex != 0) {
        context.read<TabBoxCubit>().changeTabBoxIndex(newIndex: 0);
      } else {
        _lastPressedAt = now;

        context.read<TabBoxCubit>().increasePopCount();

        AppSnackBar.showSnackBar(message: 'Press twice', context: context);
      }
    }
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<TabBoxCubit, TabBoxState>(
        buildWhen: (previous, current) =>
            previous.tabBoxCurrentIndex != current.tabBoxCurrentIndex,
        builder: (context, state) => PopScope(
          canPop: state.canPop,
          onPopInvokedWithResult: _onPopInvoked,
          child: Scaffold(
            body: SafeArea(child: _pages[state.tabBoxCurrentIndex]),
            bottomNavigationBar: Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: AppColors.greyscale200, width: 1.5),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  _tabBoxIcon.length,
                  (index) => GestureDetector(
                    onTap: () => context
                        .read<TabBoxCubit>()
                        .changeTabBoxIndex(newIndex: index),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          _tabBoxIcon[index],
                          colorFilter: ColorFilter.mode(
                            state.tabBoxCurrentIndex == index
                                ? AppColors.greyscale900
                                : AppColors.greyscale400,
                            BlendMode.srcIn,
                          ),
                        ),
                        Text(
                          _tabBoxText[index],
                          style: TextStyle(
                            color: state.tabBoxCurrentIndex == index
                                ? AppColors.greyscale900
                                : AppColors.greyscale400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
