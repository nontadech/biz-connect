import 'package:biz_connect/app/core/usecases/no_param_usecase.dart';
import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/domain/repositories/event_repository.dart';

class FavoriteUseCase extends NoParamUseCase<PopularEvent> {
  final EventRepository _repo;
  FavoriteUseCase(this._repo);

  @override
  Future<PopularEvent> execute() {
    return _repo.getFavoriteEvent();
  }

  Future<bool> chkFavoriteEvent(int eventId) {
    return _repo.favoriteEvent(eventId);
  }

  Future<bool> setFavoriteEvent(int eventId) {
    return _repo.setFavoriteEvent(eventId);
  }

}
