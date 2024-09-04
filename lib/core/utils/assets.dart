import 'gen/assets.gen.dart';

class AppAssets {
  const AppAssets._private();

  static const AppAssets _instance = AppAssets._private();

  factory AppAssets() => _instance;

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsIconsFoodGen foods = $AssetsIconsFoodGen();
  static const $AssetsIconsTabBoxGen tabBox = $AssetsIconsTabBoxGen();
}
