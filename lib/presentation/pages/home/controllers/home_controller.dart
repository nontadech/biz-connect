// ignore_for_file: unused_result

import 'dart:developer';

import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/domain/usecases/favorite_use_case.dart';
import 'package:biz_connect/domain/usecases/home_event_use_case.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController(this._homeUseCase, this._favoriteUseCase);
  static HomeController get call => Get.find();
  final HomeEventUseCase _homeUseCase;
  final FavoriteUseCase _favoriteUseCase;
  final store = Get.find<LocalStorageService>();
  var evant = Rx<Event?>(null);
  
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
    List<EventData> evantData = [];
    for (EventData elements in evant.value!.data) {
      List<EventList> evantList = [];
      for (EventList element in elements.list!) {
        if(element.event_id == eventId){
            evantList.add(element.copyWith(is_favorite : status));
        }else{
            evantList.add(element);
        }        
      } 
      evantData.add(elements.copyWith(list: evantList));   
    }
    evant(evant.value!.copyWith(data: evantData));
  }

  Future<void> waitConstructor(data) async {
    List<EventData> evantData = [];
    for (EventData elements in data.data) {
      List<EventList> evantList = [];
      for (EventList element in elements.list!) {
        if(element.event_id != null){
            bool status = (await _favoriteUseCase.chkFavoriteEvent(
              element.event_id!
            ));
            evantList.add(element.copyWith(is_favorite : status));
        }else{
            evantList.add(element);
        }        
      } 
      evantData.add(elements.copyWith(list: evantList));   
    }
    evant(data.copyWith(data: evantData));
  }
}