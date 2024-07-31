import 'package:biz_connect/data/repositories/auth_repository.dart';
import 'package:biz_connect/domain/usecases/signup_use_case.dart';
import 'package:biz_connect/presentation/pages/sign_up/controllers/controllers.dart';
import 'package:get/get.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpUseCase(Get.find<AuthenticationRepositoryIml>()));
    Get.put(SignUpController(Get.find()), permanent: true);
  }
}