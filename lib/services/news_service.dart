import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  NewsService(this.dio);
  final Dio dio;
  final String baseUrl = '';
  final String apiKey = '';
  Future<List<ArticleModel>> grtTopHeadlines({required String category}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/top-headlines?country=us&apiKey=$apiKey&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
