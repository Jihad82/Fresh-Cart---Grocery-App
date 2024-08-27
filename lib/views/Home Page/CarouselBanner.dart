import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:freshcart/Theme/color.dart';
import 'package:get/get.dart';

class BannerController extends GetxController {
  var banners = [
    'assets/banner1.png',
    'assets/banner2.png',
    'assets/banner3.png',
  ].obs;
}

class DynamicCarouselBanner extends StatelessWidget {
  final BannerController bannerController = Get.put(BannerController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return CarouselSlider(
        items: bannerController.banners.map((banner) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                padding: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: AppColors.PrimaryColors,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(banner, fit: BoxFit.fill),
              );
            },
          );
        }).toList(),
        options: CarouselOptions(
          height: 150,
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 7),
          autoPlayAnimationDuration: const Duration(milliseconds: 1100),
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
        ),

      );
    });
  }
}
