import 'package:biz_connect/data/repositories/contact_repository.dart';
import 'package:biz_connect/domain/usecases/contacts_case.dart';
import 'package:biz_connect/presentation/pages/my_contact/controllers/my_contact_controller.dart';
import 'package:get/get.dart';

class MyContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactsUseCase(Get.find<ContactRepositoryIml>()));
    Get.put(MyContactController(Get.find()), permanent: true);
  }
}