import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/support_use_case.dart';
import 'package:biz_connect/presentation/pages/supported/controllers/controllers.dart';
import 'package:get/get.dart';

class SupportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SupportUseCase(Get.find<JoinRepositoryIml>()));
    Get.put(SupportController(Get.find()), permanent: true);
  }
}