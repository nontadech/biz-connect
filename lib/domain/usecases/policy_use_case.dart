import 'package:biz_connect/app/core/usecases/no_param_usecase.dart';
import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/policy_model.dart';
import 'package:biz_connect/domain/entities/policy_entity.dart';
import 'package:biz_connect/domain/repositories/policy_repository.dart';

class PolicyUseCase extends NoParamUseCase<Policy> {
  final PolicyRepository _repo;
  PolicyUseCase(this._repo);

  @override
  Future<Policy> execute() {
    return _repo.getPolicy();
  }

  Future<PolicyDetail> getDetail(TermConditionType termConditionType) {
    return _repo.getPolicyDetail(termConditionType);
  }

  Future<Body> savePolicy(TermConditionType termConditionType, bool isAccept) {
    return _repo.savePolicy(termConditionType, isAccept);
  }

  Future<Body> savePolicyImage(String image) {
    return _repo.savePolicyImage(image);
  }

}
