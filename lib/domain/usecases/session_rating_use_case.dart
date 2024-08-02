import 'package:biz_connect/app/core/usecases/param_usecase.dart';
import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/domain/repositories/join_repository.dart';


class SessionRatingUseCase extends ParamUseCase<Body, SessionRateInput> {
  final JoinRepository _repo;
  SessionRatingUseCase(this._repo);

  @override
  Future<Body> execute(SessionRateInput params) {
    return _repo.saveSessionRating(params);
  }

  Future<SessionAnswer> getSessionRating(SessionRateInput sessionRateInput) async {
    return _repo.getSessionRating(sessionRateInput);
  }
}
