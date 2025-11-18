import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/categoty_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> caregories = const [
    CategoryModel(image: 'assets/business.jpeg', categoryName: 'Business'),
    CategoryModel(
      image: 'assets/entertainment2.jpeg',
      categoryName: 'Entertainment',
    ),
    CategoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/sports.jpeg', categoryName: 'Sports'),
    CategoryModel(image: 'assets/General.jpeg', categoryName: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: caregories.length,
        itemBuilder: (context, index) {
          return CategotyCard(category: caregories[index]);
        },
      ),
    );
  }
}
