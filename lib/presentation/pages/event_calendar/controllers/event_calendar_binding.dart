import 'package:biz_connect/data/repositories/news_repository.dart';
import 'package:biz_connect/domain/usecases/news_use_case.dart';
import 'package:biz_connect/presentation/pages/event_calendar/controllers/controllers.dart';
import 'package:get/get.dart';

class EventCalendarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewsUseCase(Get.find<NewsRepositoryIml>()));
    Get.put(EventCalendarController(Get.find()), permanent: true);
  }
}
