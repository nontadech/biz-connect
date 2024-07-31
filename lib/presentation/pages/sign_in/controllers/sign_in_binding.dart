import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/signin_use_case.dart';
import 'package:biz_connect/presentation/pages/sign_in/controllers/controllers.dart';
import 'package:get/get.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInUseCase(Get.find<AuthenticationRepositoryIml>()));
    Get.put(SignInController(Get.find()), permanent: true);
  }
}