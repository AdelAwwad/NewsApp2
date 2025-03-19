import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewService {
  final Dio dio;

  NewService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
   try {
     return await Future.delayed(Duration(seconds: 1),() async {
       final url =
       "https://newsapi.org/v2/top-headlines?country=us&apiKey=ab1f890ebaf94c1a870e1ef83ff5004f&category=$category"
           .trim();
       print("Request URL: $url");
       final response = await dio.get(url);
       Map<String, dynamic> jsonData = response.data;
       List<dynamic> articles = jsonData['articles'];

       List<ArticleModel> articlesList = [];
       for (var article in articles) {
         ArticleModel articleModel = 
         ArticleModel.fromJsom(article);
         articlesList.add(articleModel);
       }
       print(articlesList.toList());
       return articlesList;
     });
   } on Exception catch (e) {
     return [];
   }
  }
}
