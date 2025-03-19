import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/category_card.dart';
import 'package:newsapp/models/Category_model.dart';

class StatusListView extends StatelessWidget {
  const StatusListView({super.key});

  static const List<CategoryModel> categories = [
    CategoryModel(title: "business", image: "assets/business.avif"),
    CategoryModel(title: "entertainment", image: "assets/entertaiment.avif"),
    CategoryModel(title: "general", image: "assets/general.avif"),
    CategoryModel(title: "health", image: "assets/health.avif"),
    CategoryModel(title: "science", image: "assets/science.avif"),
    CategoryModel(title: "sports", image: "assets/sports.avif"),
    CategoryModel(title: "technology", image: "assets/technology.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}