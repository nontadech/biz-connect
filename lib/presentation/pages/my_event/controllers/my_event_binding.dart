import 'package:biz_connect/data/repositories/event_repository.dart';
import 'package:biz_connect/domain/usecases/event_use_case.dart';
import 'package:biz_connect/presentation/pages/my_event/controllers/controllers.dart';
import 'package:get/get.dart';

class MyEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventUseCase(Get.find<EventRepositoryIml>()));
    Get.put(MyEventController(Get.find()), permanent: true);
  }
}
