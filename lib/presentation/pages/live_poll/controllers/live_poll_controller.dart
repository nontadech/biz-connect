import 'dart:developer';

import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/domain/entities/poll_entity.dart';
import 'package:biz_connect/domain/usecases/live_poll_use_case.dart';
import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LivePollController extends GetxController {
  LivePollController(this._livePollUseCase);
  static LivePollController get call => Get.find();
  final LivePollUseCase _livePollUseCase;
  final Rx<EventFromRegister> eventFromRegister = const EventFromRegister().obs;
  Rx<BuildContext> context = NavigationService.navigatorKey.currentContext!.obs;
  final RxBool isLoading = false.obs;
  final RxBool isDataEmtpy = false.obs;
  final RxBool isLoadingPoll = false.obs;
  final RxBool isDataEmtpyPoll = false.obs;
  final Rx<Poll> poll = Poll().obs;
  final RxInt step = 0.obs;
  final RxInt maxPage = 0.obs;
  final RxList<PollInput> pollInput = [PollInput()].obs;

  onNext() {
    if(step.value >= maxPage.value) {
      popupStatus(
        context.value, 
        PopupStatusType.sucess, 
        message: 'Thank you!'
      );
      return;
    }
    step.value = step.value + 1;
  }
  onBack() {
     if(step.value == 0) {
      return;
    }
    step.value = step.value - 1;
  }
  getZone(int eventId) async {
    isLoading(false);
    isDataEmtpy(false);
    try {
      eventFromRegister.value = await _livePollUseCase.execute(eventId);
      isLoading(true);
    } catch (error) {
      isDataEmtpy(true);
      log('error $error');
    }
  }

  getPoll(int eventId, int zoneId) async{
    isLoadingPoll(false);
    isDataEmtpyPoll(false);
    try {
      poll.value = await _livePollUseCase.getPoll(eventId, zoneId);

      for(PollData poll in poll.value.data!){
        for(Choice choice in poll.choice_list!){
          if(choice.isSelect! && pollInput.firstWhere((element) => element.choice_id == choice.id, orElse: () => PollInput()).choice_id.toString() == 'null'){
            log('add');
            pollInput.add(PollInput(poll_id: poll.id.toString(), choice_id: choice.id));
          }
        }
      }

      maxPage(poll.value.data!.length-1);
      isLoadingPoll(true);
    } catch (error) {
      isDataEmtpyPoll(true);
      log('error $error');
    }
  }

  addAwnser(int eventId, int zoneId, String pollId, String choiceId) async{
    try {
      final selected =  pollInput.firstWhere((element) => element.poll_id == pollId, orElse: () => PollInput());
      if(selected.poll_id != null && selected.choice_id != null){
        await _livePollUseCase.removePoll(
          eventId, zoneId, selected.poll_id!, 'choice${selected.choice_id!}'
        );
        pollInput.remove(
          pollInput.isNotEmpty ? selected : []
        );
      }
      pollInput.add(
        PollInput(
          poll_id: pollId,
          choice_id: choiceId
        )
      );
      await _livePollUseCase.addPoll(
          eventId, zoneId, pollId, 'choice$choiceId'
      );
    } catch (error) {
      log('error $error');
    }
  }
}