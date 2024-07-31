import 'package:biz_connect/data/models/news_model.dart';
import 'package:biz_connect/data/providers/network/apis/news_api.dart';
import 'package:biz_connect/domain/repositories/news_repository.dart';

class NewsRepositoryIml extends NewsRepository {

  @override
  Future<News> getNews() async {
    final response = await NewsAPI.getNews().request();
    return News.fromJson(response);
  }
  
}
