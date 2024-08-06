import 'dart:developer';

import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/domain/entities/poll_entity.dart';
import 'package:biz_connect/domain/usecases/live_poll_use_case.dart';
import 'package:get/get.dart';

class LivePollController extends GetxController {
  LivePollController(this._livePollUseCase);
  final LivePollUseCase _livePollUseCase;
  final Rx<EventFromRegister> eventFromRegister = const EventFromRegister().obs;
  final RxBool isLoading = false.obs;
  final RxBool isDataEmtpy = false.obs;
  final Rx<Poll> poll = Poll().obs;

  getZone(int eventId) async {
    isLoading(false);
    isDataEmtpy(false);
    try {
      eventFromRegister.value = await _livePollUseCase.getZone(eventId);
      isLoading(true);
      getPoll();
    } catch (error) {
      isDataEmtpy(true);
      log('error ${error.toString()}');
    }
 
  }

  getPoll() async{
    try {
      poll.value = await _livePollUseCase.getPoll(187, 538);
      log(poll.value.toString());
    } catch (error) {
      log('error ${error.toString()}');
    }
  }
}