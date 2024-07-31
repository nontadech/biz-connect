import 'package:biz_connect/data/repositories/master_data_repository.dart';
import 'package:biz_connect/domain/usecases/category_use_case.dart';
import 'package:biz_connect/domain/usecases/interest_use_case.dart';
import 'package:biz_connect/presentation/controllers/auth/master_data_controller.dart';
import 'package:get/get.dart';

class MasterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InterestUseCase(Get.find<MasterDataRepositoryIml>()));
    Get.lazyPut(() => CategoryUseCase(Get.find<MasterDataRepositoryIml>()));
    Get.put(MasterDataController(Get.find(), Get.find()), permanent: true);

  }
}
