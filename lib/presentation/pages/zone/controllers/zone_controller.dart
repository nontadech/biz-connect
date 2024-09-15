import 'dart:developer';

import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/usecases/floor_plan_use_case.dart';
import 'package:get/get.dart';

class ZoneController extends GetxController {
  ZoneController(this._floorPlanUseCase);
  final FloorPlanUseCase _floorPlanUseCase;
  final Rx<FloorPlan> floorPlan = const FloorPlan().obs;
  final RxBool isLoading = false.obs;
  final RxBool isDataEmtpy = false.obs;

  getFloorPlan(int eventId) async {
    isLoading(false);
    isDataEmtpy(false);
    try {
      floorPlan.value = await _floorPlanUseCase.execute(eventId);
      if(floorPlan.value.data.isEmpty){
        isDataEmtpy(true);
      }
      isLoading(true);
    } catch (error) {
      isDataEmtpy(true);
      log('error ${error.toString()}');
    }
 
  }
}