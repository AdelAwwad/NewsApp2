import 'package:flutter/material.dart';
import 'package:newsapp/Methods/Login_Methods.dart';
import 'package:newsapp/models/Category_model.dart';
import 'package:newsapp/view/Category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AuthUtils.navigateTo(context,CategoryView(category: category.title)),
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 125,
          width: 220,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.7), // Shadow color
                  blurRadius: 5, // Blur radius
                  offset: const Offset(4, 3), // Shadow offset
                ),
              ],
              image:  DecorationImage(
                  fit: BoxFit.fill, // to take the height and width to image
                  image: AssetImage( category.image)),
      
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text(
              category.title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
