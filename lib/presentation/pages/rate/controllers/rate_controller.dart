import 'dart:developer';

import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/domain/usecases/session_rating_use_case.dart';
import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_controller.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class RateController extends GetxController {
  RateController(this._sessionRatingUseCase);
  final SessionRatingUseCase _sessionRatingUseCase;
  GlobalKey<FormState> ratePageFormKey = GlobalKey<FormState>();
  Rx<BuildContext> context = NavigationService.navigatorKey.currentContext!.obs;
  final commentController = TextEditingController();
  final Rx<int> rate = 0.obs;
  final Rx<SessionAnswer> sessionAnswer = const SessionAnswer().obs;

  @override
  void onClose() {
    commentController.dispose();
    super.onClose();
  }
  
  getSessionRating(int agendaId, int eventId) async {
    try {
      sessionAnswer.value = await _sessionRatingUseCase.getSessionRating(
        SessionRateInput(
          eventId: eventId,
          agendaId: agendaId,
          questionTypeId: 5
        )
      );
    } catch (error) {
      log('error ${error.toString()}');
    }
  }

  setRate(int value) async {
    rate(value);
  }
  rateAgenda(int agendaId, int eventId) async {
    LoadingBinding().dependencies();
    final loadingC = LoadingController.call;
    try {
      if(rate.value == 0){
         popupStatus(
          NavigationService.navigatorKey.currentContext!, 
          PopupStatusType.error,
          message: 'Thank you for your feedback',
        );
      }else if (ratePageFormKey.currentState!.validate()) {
        popupLoading(context.value);
        await _sessionRatingUseCase.execute(SessionRateInput(
          agendaId: agendaId,
          eventId: eventId,
          isSession: 1,
          answers: [
            AnswersInput(
              questionTypeId: 5,
              answer: 5,
              comment: commentController.text,
            ),
          ],
        ));
        Navigator.pop(loadingC.buildContext.value);
        popupStatus(
          NavigationService.navigatorKey.currentContext!, 
          PopupStatusType.sucess,
          message: 'Thank you for your feedback',
          onPressed:() {
            context.value.pop();
          },
        );
      }
    } catch (error) {
      log('error ${error.toString()}');
    }
  }
}