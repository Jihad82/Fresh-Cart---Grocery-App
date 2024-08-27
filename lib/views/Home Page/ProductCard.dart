import 'package:flutter/material.dart';
import 'package:freshcart/Theme/color.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var products = [
    {
      'image': 'assets/orange.png',
      'name': 'Orange',
      'oldPrice': '\$7.00',
      'newPrice': '\$6.23'
    },
    {
      'image': 'assets/banana.png',
      'name': 'Banana',
      'oldPrice': '\$4.00',
      'newPrice': '\$3.53'
    },
    {
      'image': 'assets/orange.png',
      'name': 'Orange',
      'oldPrice': '\$7.00',
      'newPrice': '\$6.23'
    },
    {
      'image': 'assets/banana.png',
      'name': 'Banana',
      'oldPrice': '\$4.00',
      'newPrice': '\$3.53'
    },
  ].obs;
}

class ProductGridView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GridView.builder(
        padding: const EdgeInsets.all(10), // Edge-to-edge padding
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10, // Space between cards horizontally
          mainAxisSpacing: 10, // Space between cards vertically
          childAspectRatio: 0.75,
        ),
        itemCount: productController.products.length,
        itemBuilder: (context, index) {
          var product = productController.products[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 3,
            shadowColor: Colors.grey.withOpacity(0.5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      product['image']!,
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    product['name']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        product['oldPrice']!,
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 5,width: 5,),
                      Text(
                        product['newPrice']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.PrimaryColors,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.add_shopping_cart, size: 20,color: Colors.white,),
                            SizedBox(width: 5),
                            Text(
                              'Add to Cart',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite_border, color: AppColors.PrimaryColors),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
