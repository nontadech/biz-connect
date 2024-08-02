

import 'package:biz_connect/app/core/usecases/param_usecase.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/repositories/join_repository.dart';

class SpeakerUseCase extends ParamUseCase<Speaker, int> {
  final JoinRepository _repo;
  SpeakerUseCase(this._repo);

  @override
  Future<Speaker> execute(int params) {
    return _repo.getSpeaker(params);
  }
}
