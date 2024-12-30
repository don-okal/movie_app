import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/features/home/presentation/views/widgets/home_page_view.dart';

class BottomNavBarController extends GetxController {
  var currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }

  final List<Widget> pages = [
    HomePageView(),
    Center(child: Text('Home Page')),
    Center(child: Text('Search Page')),
    Center(child: Text('Profile Page')),
  ];
}
