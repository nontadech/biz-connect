import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/live_poll_use_case.dart';
import 'package:biz_connect/presentation/pages/live_poll/controllers/controllers.dart';
import 'package:get/get.dart';

class LivePollBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LivePollUseCase(Get.find<EventRepositoryIml>(), Get.find<PollRepositoryIml>()));
    Get.put(LivePollController(Get.find()), permanent: true);
  }
}