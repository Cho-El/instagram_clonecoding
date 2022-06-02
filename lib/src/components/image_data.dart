import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageData extends StatelessWidget {
  String icon;
  final double? width;
  ImageData(
    this.icon, {
    Key? key,
    this.width = 55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon,
      width: width! / Get.mediaQuery.devicePixelRatio, // 기기마다 크기가 다름을 처리
    );
  }
}

class IconsPath {
  static String get homeoff => 'assets/images/bottom_nav_home_off_icon.jpg';
}
