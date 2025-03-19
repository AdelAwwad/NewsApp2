import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/Custom_AppBar.dart';
import 'package:newsapp/Widgets/NewViewBuilder.dart';
import 'package:newsapp/Widgets/Status_List_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppbar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: CustomScrollView(
            // when scroll  page and reach to end make it smoothly.
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: StatusListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 40),
              ),
              NewsLIstBuilder(category: 'general',)
            ],
          ),
        ));
  }
}
