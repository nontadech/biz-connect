import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/policy_model.dart';
import 'package:biz_connect/domain/entities/policy_entity.dart';


abstract class PolicyRepository {
  Future<Policy> getPolicy();
  Future<PolicyDetail> getPolicyDetail(TermConditionType termConditionType);
  Future<Body> savePolicy(TermConditionType termConditionType, bool isAccept);
  Future<Body> savePolicyImage(String image);
}
