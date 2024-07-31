import 'package:biz_connect/data/repositories/event_repository.dart';
import 'package:biz_connect/domain/usecases/favorite_use_case.dart';
import 'package:biz_connect/domain/usecases/home_event_use_case.dart';
import 'package:biz_connect/presentation/pages/home/controllers/controllers.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeEventUseCase(Get.find<EventRepositoryIml>()));
    Get.lazyPut(() => FavoriteUseCase(Get.find<EventRepositoryIml>()));
    Get.put(HomeController(Get.find(), Get.find()), permanent: true);
  }
}
