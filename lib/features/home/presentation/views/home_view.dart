import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../getx/controllers/home_controller.dart';
import 'widgets/custom_bottom_nav_bar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: Obx(
        () => controller.bottomNavBarController
            .pages[controller.bottomNavBarController.currentIndex.value],
      ),
    );
  }
}
