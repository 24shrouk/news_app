import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewService {
  final Dio dio;
  NewService(this.dio);
  Future<List<ArticalModel>> getGeneralNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3f11d52c78b945dd8568f8c0b58d42a5&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticalModel> articlesList = [];
      for (var article in articles) {
        ArticalModel articalModel = ArticalModel(
            image: article['urlToImage'],
            title: article['title'],
            subtitle: article['description']);
        articlesList.add(articalModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
