import 'package:biz_connect/app/core/usecases/no_param_usecase.dart';
import 'package:biz_connect/data/models/master_data_model.dart';
import 'package:biz_connect/domain/repositories/master_data_repository.dart';


class InterestUseCase extends NoParamUseCase<Interest> {
  final MasterDataRepository _repo;
  InterestUseCase(this._repo);

  @override
  Future<Interest> execute() {
    return _repo.getInterest();
  }
}
