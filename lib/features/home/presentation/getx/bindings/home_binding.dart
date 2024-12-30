import 'package:get/get.dart';
import 'package:movie/features/home/presentation/getx/controllers/bottom_nav_bar_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<BottomNavBarController>(
      () => BottomNavBarController(),
    );
  }
}
