

import 'package:biz_connect/app/core/usecases/param_usecase.dart';
import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/domain/repositories/join_repository.dart';

class FileUseCase extends ParamUseCase<EventFile, int> {
  final JoinRepository _repo;
  FileUseCase(this._repo);

  @override
  Future<EventFile> execute(int params) {
    return _repo.getEventFile(params);
  }

  Future<Body> sendFileEmail(FileEmailInput fileEmailInput) {
    return _repo.sendFileEmail(fileEmailInput);
  }


}
