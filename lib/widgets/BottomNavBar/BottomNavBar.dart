import 'package:flutter/material.dart';
import 'package:freshcart/Theme/color.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController {
  var selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}

class DynamicBottomBar extends StatelessWidget {
  final BottomBarController bottomBarController = Get.put(BottomBarController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        currentIndex: bottomBarController.selectedIndex.value,
        onTap: bottomBarController.onItemTapped,
        selectedItemColor: AppColors.PrimaryColors, // Selected color
        unselectedItemColor: Colors.black45, // Unselected color
        showSelectedLabels: true, // Show labels for selected items
        showUnselectedLabels: true, // Show labels for unselected items
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'My Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      );
    });
  }
}
