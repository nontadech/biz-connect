
import 'package:biz_connect/data/repositories/event_repository.dart';
import 'package:biz_connect/domain/usecases/event_use_case.dart';
import 'package:biz_connect/domain/usecases/favorite_use_case.dart';
import 'package:biz_connect/presentation/pages/popular_event/controllers/controllers.dart';
import 'package:get/get.dart';

class PopularEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventUseCase(Get.find<EventRepositoryIml>()));
    Get.lazyPut(() => FavoriteUseCase(Get.find<EventRepositoryIml>()));
    Get.put(PopularEventController(Get.find(), Get.find()), permanent: true);
  }
}