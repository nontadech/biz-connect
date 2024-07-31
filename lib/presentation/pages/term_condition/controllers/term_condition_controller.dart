import 'dart:developer';
import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/policy_model.dart';
import 'package:biz_connect/domain/entities/policy_entity.dart';
import 'package:biz_connect/domain/usecases/policy_use_case.dart';
import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/controllers/auth/image_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_controller.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class TermConditionController extends GetxController {
  static TermConditionController get call => Get.find();
  TermConditionController(this._policyUseCase);
  final PolicyUseCase _policyUseCase;
  final Rx<Policy> policy = const Policy().obs;
  final Rx<PolicyDetail> policyDetail = const PolicyDetail().obs;
  Rx<BuildContext> context = NavigationService.navigatorKey.currentContext!.obs;
    
  fetchData() async {
    try {
      policy.value = await _policyUseCase.execute();
    } catch (error) {
      log('error ${error.toString()}');
    }
  }
  savePolicy(TermConditionType termConditionType, bool isAccept) async {
    ImageBinding().dependencies();
    LoadingBinding().dependencies();
    final loadingC = LoadingController.call;
    var policy = const Body();
    try {
      popupLoading(context.value);
      if(termConditionType == TermConditionType.recondition && isAccept) {
        policy = await _policyUseCase.savePolicy(termConditionType, isAccept);
 
            }else{  
        policy = await _policyUseCase.savePolicy(termConditionType, isAccept);
      }
      Navigator.pop(loadingC.buildContext.value);
      popupStatus(
        NavigationService.navigatorKey.currentContext!, 
        PopupStatusType.sucess, 
        message: policy.message,
        onPressed:() {
          fetchData();
          context.value.pop();
        },
      );
    } catch (error) {
      log('error ${error.toString()}');
    }
  }
  getDetail(TermConditionType termConditionType) async {
    try {
      policyDetail.value = await _policyUseCase.getDetail(termConditionType);
    } catch (error) {
      log('error ${error.toString()}');
    }
  }
}
