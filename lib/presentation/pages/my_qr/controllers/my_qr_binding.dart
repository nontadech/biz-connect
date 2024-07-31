import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/qr_use_case.dart';
import 'package:biz_connect/presentation/pages/my_qr/controllers/my_qr_controller.dart';
import 'package:get/get.dart';

class MyQRBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QRUseCase(Get.find<QRRepositoryIml>()));
    Get.put(MyQRController(Get.find()), permanent: true);
  }
}
