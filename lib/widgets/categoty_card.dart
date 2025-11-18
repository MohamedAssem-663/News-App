import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategotyCard extends StatelessWidget {
  const CategotyCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 100,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
