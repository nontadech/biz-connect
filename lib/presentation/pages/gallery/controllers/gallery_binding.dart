import 'package:biz_connect/data/repositories/repository.dart';
import 'package:biz_connect/domain/usecases/gallery_use_case.dart';
import 'package:biz_connect/presentation/pages/gallery/controllers/controllers.dart';
import 'package:get/get.dart';

class GalleryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GalleryUseCase(Get.find<JoinRepositoryIml>()));
    Get.put(GalleryController(Get.find()), permanent: true);
  }
}