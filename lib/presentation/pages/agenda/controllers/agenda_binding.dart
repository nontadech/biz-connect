import 'package:biz_connect/data/repositories/join_repository.dart';
import 'package:biz_connect/domain/usecases/agenda_use_case.dart';
import 'package:biz_connect/presentation/pages/agenda/controllers/controllers.dart';
import 'package:get/get.dart';

class AgendaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgendaUseCase(Get.find<JoinRepositoryIml>()));
    Get.put(AgendaController(Get.find()), permanent: true);
  }
}
