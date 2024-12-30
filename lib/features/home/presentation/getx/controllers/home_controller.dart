import 'package:get/get.dart';
import 'package:movie/features/home/presentation/getx/controllers/bottom_nav_bar_controller.dart';

class HomeController extends GetxController {
  final BottomNavBarController bottomNavBarController =
      Get.find<BottomNavBarController>();
  RxBool isBookMarked = false.obs;
  void bookMark() {
    isBookMarked.value = !isBookMarked.value;
  }
}
