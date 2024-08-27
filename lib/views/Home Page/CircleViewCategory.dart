import 'package:flutter/material.dart';
import 'package:freshcart/Theme/color.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  var categories = [
    {'image': 'assets/fruits.png', 'label': 'Fruits'},
    {'image': 'assets/vegetables.png', 'label': 'Vegetables'},
    {'image': 'assets/drinks.png', 'label': 'Drinks'},
    {'image': 'assets/bakery.png', 'label': 'Bakery'},
    {'image': 'assets/bakery.png', 'label': 'IceCream'},

  ].obs;
}

class CircleCategoryView extends StatelessWidget {
  final CategoryController categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryController.categories.length,
            itemBuilder: (context, index) {
              var category = categoryController.categories[index];
              return Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3), // Adjust the padding to increase the border thickness
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.1), // Transparent border color
                            width: 2, // Border width
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundColor: AppColors.PrimaryColors.withOpacity(0.2),
                          backgroundImage: AssetImage(category['image']!),
                          radius: 35,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                          category['label']!,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10), // Space between each category
                ],
              );
            },
          ),
        ),
      );
    });
  }
}
