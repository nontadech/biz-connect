import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/session_rating_use_case.dart';
import 'package:biz_connect/presentation/pages/rate/controllers/controllers.dart';
import 'package:get/get.dart';

class RateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SessionRatingUseCase(Get.find<JoinRepositoryIml>()));
    Get.put(RateController(Get.find()), permanent: true);
  }
}