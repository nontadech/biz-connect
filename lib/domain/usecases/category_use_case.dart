import 'package:biz_connect/app/core/usecases/no_param_usecase.dart';
import 'package:biz_connect/data/models/master_data_model.dart';
import 'package:biz_connect/domain/repositories/master_data_repository.dart';


class CategoryUseCase extends NoParamUseCase<Category> {
  final MasterDataRepository _repo;
  CategoryUseCase(this._repo);

  @override
  Future<Category> execute() {
    return _repo.getCategory();
  }
}
