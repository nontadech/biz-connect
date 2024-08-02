import 'dart:developer';

import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/domain/usecases/agenda_use_case.dart';
import 'package:biz_connect/domain/usecases/speaker_use_case.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class SpeakerController extends GetxController {
  SpeakerController(this._speakerUseCase, this._agendaUseCase);
  final SpeakerUseCase _speakerUseCase;
  final AgendaUseCase _agendaUseCase;
  final Rx<Speaker> speaker = const Speaker().obs;
  final Rx<JoinAgenda> agenda = const JoinAgenda().obs;
  final RxBool isLoading = false.obs;
  final RxBool isLoadingDetail = false.obs;
  final carouselController = CarouselController();
  final Rx<int> selectSession = 0.obs;

  getSpeakers(int eventId) async {
    try {
      isLoading.value = false;
      speaker.value = await _speakerUseCase.execute(eventId);
      isLoading.value = true;
    } catch (error) {
      log('error ${error.toString()}');
    }
  }

  getAgenda(int eventId, int speakerId) async {
    try {
      isLoadingDetail.value = false;
      agenda.value = await _agendaUseCase.execute(JoinAgendaInput(
        eventId: eventId,
        speakerId: speakerId
      ));
      isLoadingDetail.value = true;
    } catch (error) {
      log('error ${error.toString()}');
    }
  }

  onSelectSession(int session) async {
    carouselController.animateToPage(session);
    selectSession(session);
    // filterSession();
  }

}