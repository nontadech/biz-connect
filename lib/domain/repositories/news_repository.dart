
import 'package:biz_connect/data/models/news_model.dart';

abstract class NewsRepository {
  Future<News> getNews();
}
