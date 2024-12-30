import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/core/routes/app_pages.dart';
import 'package:movie/core/utils/app_colors.dart';

import 'core/locale/locale.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.black,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.bottomNavBar,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.bottomNavBarIcon,
        ),
      ),
      translations: MyLocale(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.intial,
      getPages: AppPages.routes,
    );
  }
}
