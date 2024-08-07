import 'package:biz_connect/data/repositories/repository.dart';
import 'package:get/get.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut(() => AuthenticationRepositoryIml());
    Get.lazyPut(() => EventRepositoryIml());
    Get.lazyPut(() => NewsRepositoryIml());
    Get.lazyPut(() => MasterDataRepositoryIml());
    Get.lazyPut(() => UserRepositoryIml());
    Get.lazyPut(() => ContactRepositoryIml());
    Get.lazyPut(() => PolicyRepositoryIml());
    Get.lazyPut(() => QRRepositoryIml());
    Get.lazyPut(() => JoinRepositoryIml());
    Get.lazyPut(() => PollRepositoryIml());
    Get.lazyPut(() => QuestionRepositoryIml());
  }
}
