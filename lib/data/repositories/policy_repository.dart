

import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/policy_model.dart';
import 'package:biz_connect/data/providers/network/apis/policy_api.dart';
import 'package:biz_connect/domain/entities/policy_entity.dart';
import 'package:biz_connect/domain/repositories/policy_repository.dart';

class PolicyRepositoryIml extends PolicyRepository {

  @override
  Future<Policy> getPolicy() async {
    final response = await PolicyAPI.getPolicy().request();
    return Policy.fromJson(response);
  }

  @override
  Future<PolicyDetail> getPolicyDetail(TermConditionType termConditionType) async {
    final response = await PolicyAPI.getPolicyDetail(termConditionType).request();
    return PolicyDetail.fromJson(response);
  }
  
  @override
  Future<Body> savePolicy(TermConditionType termConditionType, bool isAccept) async {
     final response = await PolicyAPI.savePolicy(termConditionType, isAccept).request();
    return Body.fromJson(response);
  }

  @override
  Future<Body> savePolicyImage(String image) async {
    final response = await PolicyAPI.postEnroll(image).request();
    return Body.fromJson(response);
  }
  
}
