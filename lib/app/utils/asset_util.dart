class AssetUtil {
  /// Load image from folder assets/images/
  static String getImage(String name) {
    return 'assets/images/$name';
  }

  /// Load icons from folder assets/icons/
  static String getIcon(String name) {
    return 'assets/icons/$name';
  }

  /// Load animation from folder assets/animation/
  static String getAnimation(String name) {
    return 'assets/animations/$name.json';
  }
}
