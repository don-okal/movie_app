import 'package:get/get.dart';

import '../../features/home/presentation/getx/bindings/home_binding.dart';
import '../../features/home/presentation/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const intial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
