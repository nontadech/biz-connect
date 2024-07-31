import 'package:biz_connect/data/repositories/join_repository.dart';
import 'package:biz_connect/domain/usecases/join_menu_use_case.dart';
import 'package:biz_connect/presentation/pages/join/controllers/controllers.dart';
import 'package:get/get.dart';

class JoinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JoinMenuUseCase(Get.find<JoinRepositoryIml>()));
    Get.put(JoinController(Get.find()), permanent: true);
  }
}
