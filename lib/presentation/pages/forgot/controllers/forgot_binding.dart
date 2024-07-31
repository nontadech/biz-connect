import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/forgot_use_case.dart';
import 'package:biz_connect/presentation/pages/forgot/controllers/controllers.dart';
import 'package:get/get.dart';

class ForgotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotInUseCase(Get.find<AuthenticationRepositoryIml>()));
    Get.put(ForgotController(Get.find()), permanent: true);
  }
}