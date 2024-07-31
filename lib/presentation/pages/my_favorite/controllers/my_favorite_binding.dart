
import 'package:biz_connect/data/repositories/event_repository.dart';
import 'package:biz_connect/domain/usecases/favorite_use_case.dart';
import 'package:biz_connect/presentation/pages/my_favorite/controllers/controllers.dart';
import 'package:get/get.dart';

class MyFavoriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoriteUseCase(Get.find<EventRepositoryIml>()));
    Get.put(MyFavoriteController(Get.find()), permanent: true);
  }
}