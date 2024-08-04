

import 'package:biz_connect/app/core/usecases/param_usecase.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/domain/repositories/join_repository.dart';

class SurveyUseCase extends ParamUseCase<SessionRating, SessionRateInput> {
  final JoinRepository _repo;
  SurveyUseCase(this._repo);

  @override
  Future<SessionRating> execute(SessionRateInput params) {
    return _repo.getSessionRatingAll(params);
  }
}
