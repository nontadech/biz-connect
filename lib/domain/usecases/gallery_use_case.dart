

import 'package:biz_connect/app/core/usecases/param_usecase.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/repositories/join_repository.dart';

class GalleryUseCase extends ParamUseCase<Gallery, int> {
  final JoinRepository _repo;
  GalleryUseCase(this._repo);

  @override
  Future<Gallery> execute(int params) {
    return _repo.getGallery(params);
  }
}
