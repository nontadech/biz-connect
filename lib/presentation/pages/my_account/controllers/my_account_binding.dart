import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/profile_use_case.dart';
import 'package:biz_connect/presentation/pages/my_account/controllers/controllers.dart';
import 'package:get/get.dart';

class MyAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileUseCase(Get.find<UserRepositoryIml>()));
    Get.put(MyAccountController(Get.find()), permanent: true);
  }
}