// ignore_for_file: unused_result
import 'dart:developer';

import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/domain/usecases/agenda_use_case.dart';
import 'package:get/get.dart';

class AgendaController extends GetxController {
  AgendaController(this._agendaUseCase);
  final AgendaUseCase _agendaUseCase;
  final store = Get.find<LocalStorageService>();
  final Rx<JoinAgenda> agenda = const JoinAgenda().obs;
  final RxList<SessionList> sessionList = <SessionList>[].obs;

  final Rx<String> selectRoom = ''.obs;
  final Rx<String> selectSession = ''.obs;
  final Rx<int> eventId = 0.obs;
  
  getAgenda(JoinAgendaInput joinAgendaInput) async {
    try {
      eventId.value = joinAgendaInput.eventId;
      agenda.value = await _agendaUseCase.execute(joinAgendaInput);
      filterSession();
    } catch (error) {
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

  onSelectSession(String session) async {
    selectSession(session);
    filterSession();
  }
  filterSession() {
    if(selectSession.value.isNotEmpty && agenda.value.sessions.length > 1){
      sessionList.value = agenda.value.sessions.firstWhere((element) => element.session_title_date == selectSession.value).session_list as List<SessionList>;
    }else{
      sessionList.value = agenda.value.sessions[0].session_list as List<SessionList>;
    }
  }

}