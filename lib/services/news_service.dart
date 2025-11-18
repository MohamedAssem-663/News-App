import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  NewsService(this.dio);
  final Dio dio;
  final String baseUrl = 'https://newsapi.org/v2';
  final String apiKey = '58ee76ab7c7a451086da047ff6743d66';
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
