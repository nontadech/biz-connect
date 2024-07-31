import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/ticket_detail_use_case.dart';
import 'package:biz_connect/domain/usecases/ticket_use_case.dart';
import 'package:biz_connect/presentation/pages/my_ticket/controllers/controllers.dart';
import 'package:get/get.dart';

class MyTicketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketUseCase(Get.find<EventRepositoryIml>()));
    Get.lazyPut(() => TicketDetailUseCase(Get.find<EventRepositoryIml>()));
    Get.put(MyTicketController(Get.find(), Get.find()), permanent: true);
  }
}