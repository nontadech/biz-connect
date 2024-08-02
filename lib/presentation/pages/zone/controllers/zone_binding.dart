import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/floor_plan_use_case.dart';
import 'package:biz_connect/presentation/pages/zone/controllers/controllers.dart';
import 'package:get/get.dart';

class ZoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FloorPlanUseCase(Get.find<JoinRepositoryIml>()));
    Get.put(ZoneController(Get.find()), permanent: true);
  }
}