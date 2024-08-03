import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/file_use_case.dart';
import 'package:biz_connect/presentation/pages/download/controllers/controllers.dart';
import 'package:get/get.dart';

class DownloadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FileUseCase(Get.find<JoinRepositoryIml>()));
    Get.put(DownloadController(Get.find()), permanent: true);
  }
}