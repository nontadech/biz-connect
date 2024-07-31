import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/contacts_case.dart';
import 'package:biz_connect/domain/usecases/scan_use_case.dart';
import 'package:biz_connect/presentation/pages/scan/controllers/controllers.dart';
import 'package:get/get.dart';

class ScanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScanUseCase(Get.find<QRRepositoryIml>()));
    Get.lazyPut(() => ContactsUseCase(Get.find<ContactRepositoryIml>()));
    Get.put(ScanController(Get.find(), Get.find()), permanent: true);
  }
}
