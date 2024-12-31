import 'package:get/get.dart';
import 'package:movie/features/home/data/model/now_playing_model.dart';
import 'package:movie/features/home/domain/use_case/use_case.dart';
import 'package:movie/features/home/presentation/getx/controllers/bottom_nav_bar_controller.dart';

import '../../../../../core/services/use_case.dart';

class HomeController extends GetxController {
  HomeController(this._homeUseCase);

  final HomeUseCase _homeUseCase;

  TopRatedModel topRatedModel = TopRatedModel();
  final loading = true.obs;
  Future<void> fetchHomeData() async {
    final result = await _homeUseCase.call(Param(loading: loading));
    result.fold(
      (error) {
        // Handle error (optional)
      },
      (data) {
        topRatedModel = data;
      },
    );
  }

  final BottomNavBarController bottomNavBarController =
      Get.find<BottomNavBarController>();
  RxBool isBookMarked = false.obs;
  void bookMark() {
    isBookMarked.value = !isBookMarked.value;
  }

  @override
  void onInit() async {
    super.onInit();
    await fetchHomeData();
  }
}
