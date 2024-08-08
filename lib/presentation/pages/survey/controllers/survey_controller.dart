import 'dart:developer';

import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/domain/usecases/session_rating_use_case.dart';
import 'package:biz_connect/domain/usecases/survey_use_case.dart';
import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/controllers/auth/image_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/image_controller.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_controller.dart';
import 'package:biz_connect/presentation/widgets/popup_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class SurveyController extends GetxController {
   SurveyController(this._surveyUseCase, this._sessionRatingUseCase);
  final SurveyUseCase _surveyUseCase;
  final SessionRatingUseCase _sessionRatingUseCase;
  final Rx<SessionRating> sessionRating = const SessionRating().obs;
  Rx<BuildContext> context = NavigationService.navigatorKey.currentContext!.obs;
  final RxBool isLoading = false.obs;
  final RxBool isDataEmtpy = false.obs;
  final List<AnswersInput> answersInput = [];
  final List<TextEditingController> answersController = [];
  final Rx<String> img = ''.obs;
  static SurveyController get call => Get.find();
  final Rx<int> numberPage = 1.obs;
  final int maxPage = 7;
  onNext() {
    if(numberPage.value >= maxPage) {
      return;
    }
    numberPage.value = numberPage.value + 1;
  }
  onBack() {
     if(numberPage.value == 1) {
      return;
    }
    numberPage.value = numberPage.value - 1;
  }

  getSurvey(int eventId) async {
    isLoading(false);
    isDataEmtpy(false);
    try {
      sessionRating.value = await _surveyUseCase.execute(
        SessionRateInput(
          eventId: eventId,
          agendaId: 0
        )
      );
      isLoading(true);
    } catch (error) {
      isDataEmtpy(true);
      log('error ${error.toString()}');
    }
  }

  saveSurvey(int eventId) async {
    int i = 0;
    LoadingBinding().dependencies();
    final loadingC = LoadingController.call;
    answersInput.clear();
    try {
      popupLoading(context.value);
      for (var element in sessionRating.value.data!) {
        if( element.quiestion_type_name != QuiestionTypeName.attachImage){
          answersInput.add(
            AnswersInput(
              questionId: element.id,
              questionTypeId: element.quiestion_type_id,
              answer: answersController[i].text,
              isImage: false,
            )
          );
        }else{
          answersInput.add(
            AnswersInput(
              questionId: element.id,
              questionTypeId: element.quiestion_type_id,
              answer: ['data:image/png;base64,${answersController[i].text}'],
              isImage: true,
            )
          );
        }
      i++;
      }
      await _sessionRatingUseCase.execute(SessionRateInput(
        agendaId: 0,
        eventId: eventId,
        answers: answersInput,
      ));
      Navigator.pop(loadingC.buildContext.value);
      context.value.push('/join/survey_thank', extra: {'event_id': eventId});
    } catch (error) {
      Navigator.pop(loadingC.buildContext.value);
      log('error ${error.toString()}');
    }
  }

  saveImage(ImageSource imageSource, int page) async {
    ImageBinding().dependencies();
    final imageC = ImageController.call;
    LoadingBinding().dependencies();
    final loadingC = LoadingController.call;
    try {
      popupLoading(context.value);
      final image = await imageC.pickedImg(imageSource);
      img.value = image.toString();
      answersController[page-1].text = image.toString();
      Navigator.pop(loadingC.buildContext.value);
      context.value.pop();
    } catch (error) {
      log('error ${error.toString()}');
    }
  }
}

