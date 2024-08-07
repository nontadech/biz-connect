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
  GlobalKey<FormState> questionFormKey = GlobalKey<FormState>();
  final msgController = TextEditingController();
  final Rx<EventFromRegister> eventFromRegister = const EventFromRegister().obs;
  Rx<BuildContext> context = NavigationService.navigatorKey.currentContext!.obs;
  final RxBool isLoading = false.obs;
  final RxBool isDataEmtpy = false.obs;
  final RxBool isLoadingPoll = false.obs;
  final RxBool isLoadingQuestion = false.obs;
  final RxBool isDataEmtpyPoll = false.obs;
  final RxBool isDataEmtpyQuestion = false.obs;
  final Rx<Poll> poll = Poll().obs;
  final RxList<QuestionData> question = [QuestionData()].obs;
  final RxInt step = 0.obs;
  final RxInt maxPage = 0.obs;
  final RxList<PollInput> pollInput = [PollInput()].obs;

  @override
  void onClose() {
    msgController.dispose();
    super.onClose();
  }

  onNext() {
    if(step.value >= maxPage.value) {
      popupStatus(
        context.value, 
        PopupStatusType.sucess, 
        message: 'Thank you!'
      );
      return;
    }
    if(pollInput.firstWhere(
      (element) => element.page == step.value
      , orElse: () => PollInput()
    ).page.toString() == 'null'){
       popupStatus(
        context.value, 
        PopupStatusType.error, 
        message: 'Please fill in the answer'
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

  getPoll(int eventId, int zoneId){
    isLoadingPoll(false);
    isDataEmtpyPoll(false);
    try {
      _livePollUseCase.getPoll(eventId, zoneId).listen((event) {
        pollInput.clear();
        if(event.snapshot.value != null){
          Object? values = event.snapshot.value;
          List<PollData> pollList = [];
          (values as Map<dynamic, dynamic>?)?.forEach((key1, value1) {
            if(key1 != 'zoneName'){
              values![key1].forEach((key2, value2) {
                if(key2 == 'Choice'){
                  List<Choice> choiceList = [];
                  values[key1][key2].forEach((key3, value3) {
                    Choice choice = Choice();
                    values[key1][key2][key3].forEach((key4, value4) {
                      if(key4 != 'User'){
                        if(key4 == 'id'){
                          choice = Choice(
                            id: value4.toString(),
                            awnser: choice.awnser.toString(),
                          );
                        }else if(key4 == 'text'){
                          choice = Choice(
                            id: choice.id.toString(),
                            awnser: value4.toString()
                          );
                        }
                      }else{
                        choice = Choice(
                          id: choice.id.toString(),
                          awnser: choice.awnser.toString(),
                          isSelect: true
                        );
                      }
                    });
                    choiceList.add(choice);
                  });
                  choiceList.sort((a, b) => a.id!.compareTo(b.id!));
                  pollList.add(PollData(
                    id: key1.toString(),
                    question: values[key1]['titleName'].toString(),
                    choice_list: choiceList,
                  ));
                }
              });
            }
          });
          poll.value = Poll(data: pollList);
          int page = 0;
          for(PollData poll in poll.value.data!){
            for(Choice choice in poll.choice_list!){
              if(choice.isSelect! && pollInput.firstWhere((element) => element.choice_id == choice.id, orElse: () => PollInput()).choice_id.toString() == 'null'){
                pollInput.add(PollInput(
                  poll_id: poll.id.toString(), 
                  choice_id: choice.id,
                  page: page
                ));
              }
            }
            page++;
          }
          maxPage(poll.value.data!.length-1);
          isLoadingPoll(true);
        }
      });
    
    } catch (error) {
      isDataEmtpyPoll(true);
      log('error $error');
    }
  }

  addAwnser(int eventId, int zoneId, String pollId, String choiceId, int page) async{
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
          choice_id: choiceId,
          page: page
        )
      );
      await _livePollUseCase.addPoll(
          eventId, zoneId, pollId, 'choice$choiceId'
      );
    } catch (error) {
      log('error $error');
    }
  }

  getQuestion(int eventId, int zoneId){
    isLoadingQuestion(false);
    isDataEmtpyQuestion(false);
    try {
      _livePollUseCase.getQuestion(eventId, zoneId).listen((event) {
        question.clear();
        if(event.snapshot.value != null){
          Object? values = event.snapshot.value;
           (values as Map<dynamic, dynamic>?)?.forEach((key1, value1) {
              question.add(QuestionData.fromJson( Map<String, dynamic>.from (value1 as Map)));
           });
        }
        isLoadingQuestion(true);
      });
    } catch (error) {
      isDataEmtpyQuestion(true);
      log('error $error');
    }
  }

  addQuestion(int eventId, int zoneId) async{
     try {
      if (questionFormKey.currentState!.validate()) {
        await _livePollUseCase.addQuestion(
          eventId, zoneId, msgController.text
        );
        // popupThank(context.value);
        popupStatus(
          NavigationService.navigatorKey.currentContext!, 
          PopupStatusType.sucess, 
          message: 'Your question is submitted. Please wait for the approval from organizer before publish display.',
        );
        msgController.clear();
      }
    } catch (error) {
      log('error $error');
    }
  }
}