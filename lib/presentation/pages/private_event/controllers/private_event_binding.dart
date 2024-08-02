import 'package:biz_connect/data/repositories/qr_repository.dart';
import 'package:biz_connect/domain/usecases/private_event_use_case.dart';
import 'package:biz_connect/presentation/pages/private_event/controllers/controllers.dart';
import 'package:get/get.dart';

class PrivateEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrivateEventUseCase(Get.find<QRRepositoryIml>()));
    Get.put(PrivateEventController(Get.find()), permanent: true);
  }
}
