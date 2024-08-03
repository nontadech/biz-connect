import 'dart:developer';

import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/domain/usecases/agenda_use_case.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class AgendaController extends GetxController {
  AgendaController(this._agendaUseCase);
  final AgendaUseCase _agendaUseCase;
  final store = Get.find<LocalStorageService>();
  final Rx<JoinAgenda> agenda = const JoinAgenda().obs;
  final RxList<SessionData> sessionList = <SessionData>[].obs;
  final carouselController = CarouselController();

  final Rx<String> selectRoom = ''.obs;
  final Rx<int> selectSession = 0.obs;
  final Rx<int> eventId = 0.obs;
  final RxBool isLoading = false.obs;
  final RxBool isDataEmtpy = false.obs;
  
  getAgenda(JoinAgendaInput joinAgendaInput) async {
    isDataEmtpy(false);
    try {
      isLoading(false);
      eventId.value = joinAgendaInput.eventId;
      agenda.value = await _agendaUseCase.execute(joinAgendaInput);
      log(agenda.value.toString());
      filterSession();
      isLoading(true);
    } catch (error) {
      isDataEmtpy(true);
      log('error ${error.toString()}');
    }
  }

  onSelectRoom(String room) async {
    if(room.toLowerCase() == 'all'){
      getAgenda(JoinAgendaInput(
        eventId: eventId.value,
        room: ''
      ));
    }else{
      getAgenda(JoinAgendaInput(
        eventId: eventId.value,
        room: room
      ));
    }
    selectRoom(room);
  }

  onSelectSession(int session) async {
    carouselController.animateToPage(session);
    selectSession(session);
    // filterSession();
  }
  filterSession() {
     sessionList.value = agenda.value.sessions;
  }

}