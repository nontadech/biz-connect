import 'dart:developer';

import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/usecases/floor_plan_use_case.dart';
import 'package:get/get.dart';

class ZoneController extends GetxController {
  ZoneController(this._floorPlanUseCase);
  final FloorPlanUseCase _floorPlanUseCase;
  final Rx<FloorPlan> floorPlan = const FloorPlan().obs;

  getFloorPlan(int eventId) async {
    try {
      floorPlan.value = await _floorPlanUseCase.execute(eventId);
    } catch (error) {
      log('error ${error.toString()}');
    }
 
  }
}