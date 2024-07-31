

import 'package:biz_connect/app/core/usecases/no_param_usecase.dart';
import 'package:biz_connect/data/models/news_model.dart';
import 'package:biz_connect/domain/repositories/news_repository.dart';

class NewsUseCase extends NoParamUseCase<News> {
  final NewsRepository _repo;
  NewsUseCase(this._repo);

  @override
  Future<News> execute() {
    return _repo.getNews();
  }
}
