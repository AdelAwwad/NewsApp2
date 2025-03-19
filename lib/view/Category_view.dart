import 'package:flutter/material.dart';

import '../Widgets/Custom_AppBar.dart';
import '../Widgets/NewViewBuilder.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppbar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: CustomScrollView(
            // when scroll  page and reach to end make it smoothly.
            physics: BouncingScrollPhysics(),
            slivers: [
              NewsLIstBuilder(category: category,)
            ],
          ),
        ));
  }
}
