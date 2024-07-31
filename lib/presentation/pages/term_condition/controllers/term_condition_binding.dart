import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/policy_use_case.dart';
import 'package:biz_connect/presentation/pages/term_condition/controllers/controllers.dart';
import 'package:get/get.dart';

class TermConditionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PolicyUseCase(Get.find<PolicyRepositoryIml>()));
    Get.put(TermConditionController(Get.find()), permanent: true);
  }
}