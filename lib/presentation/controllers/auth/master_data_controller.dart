import 'dart:developer';
import 'package:biz_connect/domain/entities/master_data_entity.dart';
import 'package:biz_connect/domain/usecases/category_use_case.dart';
import 'package:biz_connect/domain/usecases/interest_use_case.dart';
import 'package:get/get.dart';

class MasterDataController extends GetxController {
  static MasterDataController get call => Get.find();
  MasterDataController(this._interestUseCase, this._categoryUseCase);
  final InterestUseCase _interestUseCase;
  final CategoryUseCase _categoryUseCase;
  RxList<CategoryData> category = [const CategoryData()].obs;
  RxList<InterestData> interest = [const InterestData()].obs;
  RxList<dynamic> userCategory = [].obs;
  RxList<dynamic> userInterest = [].obs;

  getInterest() async {
    try {
      final data = await _interestUseCase.execute();
      interest(data.data);
    } catch (error) {
      log('error ${error.toString()}');
    }
  }

  getCategory() async {
    try {
      final data = await _categoryUseCase.execute();
      category(data.data);
    } catch (error) {
      log('error ${error.toString()}');
    }
  }
}
