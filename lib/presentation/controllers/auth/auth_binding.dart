import 'package:biz_connect/data/repositories/auth_repository.dart';
import 'package:biz_connect/domain/usecases/fcm_token_use_case.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:get/get.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FCMTokenUseCase(Get.find<AuthenticationRepositoryIml>()));
    Get.put(AuthController(Get.find()), permanent: true);
  }
}
