import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/profile_use_case.dart';
import 'package:biz_connect/presentation/pages/profile/controllers/controllers.dart';
import 'package:get/get.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileUseCase(Get.find<UserRepositoryIml>()));
    Get.put(ProfileController(Get.find()), permanent: true);
  }
}