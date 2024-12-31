// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie/core/utils/app_assets.dart';
import 'package:movie/core/utils/app_colors.dart';
import 'package:movie/core/utils/size_utils.dart';
import 'package:movie/features/home/presentation/getx/controllers/home_controller.dart';

class BookMark extends GetView<HomeController> {
  const BookMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:
              controller.isBookMarked.value ? AppColors.primary : Colors.white,
          image: DecorationImage(
            image: AssetImage(AppAssets.testBackGround),
            fit: BoxFit.cover,
          ),
        ),
        height: getVerticalSize(199),
        width: getHorizontalSize(129),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: GestureDetector(
                onTap: () {
                  controller.bookMark();
                },
                child: SvgPicture.asset(
                  AppAssets.bookMark,
                  height: getVerticalSize(36),
                  width: getHorizontalSize(27),
                  fit: BoxFit.contain,
                  color:
                      controller.isBookMarked.value ? AppColors.primary : null,
                ),
              ),
            ),
            Positioned(
              top: getVerticalSize(4),
              left: getHorizontalSize(4),
              child: Icon(
                controller.isBookMarked.value ? Icons.check : Icons.add,
                size: getVerticalSize(18),
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
