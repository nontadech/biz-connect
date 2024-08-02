import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/agenda_use_case.dart';
import 'package:biz_connect/domain/usecases/speaker_use_case.dart';
import 'package:biz_connect/presentation/pages/speaker/controllers/controllers.dart';
import 'package:get/get.dart';

class SpeakerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpeakerUseCase(Get.find<JoinRepositoryIml>()));
    Get.lazyPut(() => AgendaUseCase(Get.find<JoinRepositoryIml>()));
    Get.put(SpeakerController(Get.find(), Get.find()), permanent: true);
  }
}