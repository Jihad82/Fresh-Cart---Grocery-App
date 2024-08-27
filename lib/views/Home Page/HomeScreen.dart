import 'package:flutter/material.dart';
import 'package:freshcart/Theme/color.dart';
import 'package:freshcart/views/Home%20Page/CarouselBanner.dart';
import 'package:freshcart/views/Home%20Page/CircleViewCategory.dart';
import 'package:freshcart/views/Home%20Page/CustomSearchBar.dart';
import 'package:freshcart/views/Home%20Page/ProductCard.dart';
import 'package:freshcart/widgets/BottomNavBar/BottomNavBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Grocery App')),
      body: Column(
        children: [
          CustomSearchBar(),
          const SizedBox(height: 10,),
          DynamicCarouselBanner(),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Explore Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: AppColors.PrimaryColors, // Use primary color
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          CircleCategoryView(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Selling Products',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(child: ProductGridView()),
        ],
      ),

      bottomNavigationBar: DynamicBottomBar(),
    );
  }
}
