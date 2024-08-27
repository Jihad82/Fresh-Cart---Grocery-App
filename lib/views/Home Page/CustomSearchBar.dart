import 'package:flutter/material.dart';
import 'package:freshcart/Theme/color.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        cursorColor: AppColors.PrimaryColors.withOpacity(0.4),
        decoration: InputDecoration(
          hintText: 'Search your groceries',
          suffixIcon: Icon(Icons.search,color: AppColors.PrimaryColors,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: AppColors.PrimaryColors.withOpacity(0.2),
        ),
      ),
    );
  }
}
