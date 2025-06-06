import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Services/News_Service.dart';
import 'package:newsapp/Widgets/article_card.dart';
import 'package:newsapp/models/article_model.dart';

class NewsListView extends StatelessWidget {
 final List<ArticleModel> articles ;
  const NewsListView({super.key,required this.articles });

  @override
  Widget build(BuildContext context) {
    return
      SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length, (context, index) {
      return  Padding(
          padding: const EdgeInsets.only(bottom: 26), child: ArticleCard(articleModel: articles[index],));
    }));
  }
}
