import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/session_rating_use_case.dart';
import 'package:biz_connect/domain/usecases/survey_use_case.dart';
import 'package:biz_connect/presentation/pages/survey/controllers/controllers.dart';
import 'package:get/get.dart';

class SurveyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SurveyUseCase(Get.find<JoinRepositoryIml>()));
    Get.lazyPut(() => SessionRatingUseCase(Get.find<JoinRepositoryIml>()));
    Get.put(SurveyController(Get.find(), Get.find()), permanent: true);
  }
}