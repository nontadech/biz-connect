// ignore_for_file: unused_result

import 'dart:developer';

import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/domain/usecases/favorite_use_case.dart';
import 'package:biz_connect/domain/usecases/home_event_use_case.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController(this._homeUseCase, this._favoriteUseCase);
  static HomeController get call => Get.find();
  final HomeEventUseCase _homeUseCase;
  final FavoriteUseCase _favoriteUseCase;
  final store = Get.find<LocalStorageService>();
  var event = Rx<Event?>(null);
  
  @override
  void onInit() async {
    getEvent();
    super.onInit();
  }
   fetchData() async {
    await getEvent();
  }
  getEvent() async {
    try {
      final data = await _homeUseCase.execute();
      Future.wait([waitConstructor(data)]);
      FlutterNativeSplash.remove();
   
    } catch (error) {
      log('error ${error.toString()}');
    }
  }

  setFavoriteEvent(int eventId) async{
    bool status = await _favoriteUseCase.setFavoriteEvent(eventId);
    List<EventData> eventData = [];
    for (EventData elements in event.value!.data) {
      List<EventList> eventList = [];
      for (EventList element in elements.list!) {
        if(element.event_id == eventId){
            eventList.add(element.copyWith(is_favorite : status));
        }else{
            eventList.add(element);
        }        
      } 
      eventData.add(elements.copyWith(list: eventList));   
    }
    event(event.value!.copyWith(data: eventData));
  }

  Future<void> waitConstructor(data) async {
    final authC = AuthController.call;
    if(authC.isLoggedIn.value){
      List<EventData> eventData = [];
      for (EventData elements in data.data) {
        List<EventList> eventList = [];
        for (EventList element in elements.list!) {
          if(element.event_id != null){
              bool status = (await _favoriteUseCase.chkFavoriteEvent(
                element.event_id!
              ));
              eventList.add(element.copyWith(is_favorite : status));
          }else{
              eventList.add(element);
          }        
        } 
        eventData.add(elements.copyWith(list: eventList));   
      }
      event(data.copyWith(data: eventData));
    }else{
      event(data);
    }
  }
}