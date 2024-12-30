// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie/core/utils/app_assets.dart';
import 'package:movie/core/utils/app_colors.dart';
import 'package:movie/core/utils/app_text_style.dart';
import 'package:movie/core/utils/size_utils.dart';
import 'package:movie/features/home/presentation/getx/controllers/home_controller.dart';

class CustomBottomNavBar extends GetView<HomeController> {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.bottomNavBarController.currentIndex.value,
        onTap: controller.bottomNavBarController.changeIndex,
        backgroundColor: AppColors.bottomNavBar,
        selectedLabelStyle: AppTextStyle.white14600,
        unselectedLabelStyle: AppTextStyle.white14600,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              color: controller.bottomNavBarController.currentIndex.value == 0
                  ? AppColors.primary
                  : AppColors.bottomNavBarIcon,
              AppAssets.home,
              height: getSize(18),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              color: controller.bottomNavBarController.currentIndex.value == 1
                  ? AppColors.primary
                  : AppColors.bottomNavBarIcon,
              AppAssets.search,
              height: getSize(18),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              color: controller.bottomNavBarController.currentIndex.value == 2
                  ? AppColors.primary
                  : AppColors.bottomNavBarIcon,
              AppAssets.browse,
              height: getSize(18),
            ),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              color: controller.bottomNavBarController.currentIndex.value == 3
                  ? AppColors.primary
                  : AppColors.bottomNavBarIcon,
              AppAssets.watchList,
              height: getSize(18),
            ),
            label: 'Watch List',
          ),
        ],
      ),
    );
  }
}
