import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/News_List_view.dart';
import 'package:newsapp/models/article_model.dart';

import '../Services/News_Service.dart';

class NewsLIstBuilder extends StatefulWidget {
  final String category;
  const NewsLIstBuilder({
    super.key, required this.category,
  });

  @override
  State<NewsLIstBuilder> createState() => _NewsLIstBuilderState();
}

class _NewsLIstBuilderState extends State<NewsLIstBuilder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        // future direct call the request but expensive wau
        // because everytime we run code we send request

        future: future,
        builder: (context, snapshot) {
          // hold the response data from future
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text("Oops there was error while loading data"),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
    // NewsListView(articles: articles,);
  }
}
