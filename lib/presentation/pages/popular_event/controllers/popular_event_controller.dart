import 'dart:developer';
import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/domain/usecases/event_permission_use_case.dart';
import 'package:biz_connect/domain/usecases/event_use_case.dart';
import 'package:biz_connect/domain/usecases/favorite_use_case.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:get/get.dart';

class PopularEventController extends GetxController {
  PopularEventController(this._eventUseCase, this._favoriteUseCase, this._eventPermissionUseCase);
  static PopularEventController get call => Get.find();
  final EventUseCase _eventUseCase;
  final FavoriteUseCase _favoriteUseCase;
  final EventPermissionUseCase _eventPermissionUseCase;
  final store = Get.find<LocalStorageService>();
  var event = Rx<PopularEvent?>(null);
  final Rx<bool> isFavorite = false.obs;
  final eventPermission = Rx<EventPermission?>(null);
  
  @override
  void onInit() async {
    getEvent();
    super.onInit();
  }

  fetchData() async {
    await getEvent();
  }

  getEventPermission(int eventId) async{
    try {
      eventPermission.value = await _eventPermissionUseCase.execute(eventId);
    } catch (error) {
      log('error ${error.toString()}');
    }
  }
  setFavoriteEvent(int eventId) async{
    bool status = await _favoriteUseCase.setFavoriteEvent(eventId);
    List<EventList> eventList = [];
    for (EventList element in event.value!.data) {
      if(element.event_id == eventId){
          eventList.add(element.copyWith(is_favorite : status));
      }else{
          eventList.add(element);
      }        
    } 
    event(event.value!.copyWith(data: eventList));  
  }

  setFavoriteEventDetail(int eventId) async{
    bool status = await _favoriteUseCase.setFavoriteEvent(eventId);
    isFavorite(status);
  }
  
  getEvent() async {
    try {
      final data = await _eventUseCase.execute();
      Future.wait([waitConstructor(data)]);
   
    } catch (error) {
      log('error ${error.toString()}');
    }
  }

  Future<void> waitConstructor(data) async {
    final authC = AuthController.call;
    if(authC.isLoggedIn.value){
      List<EventList> eventList = [];
      for (EventList element in data.data!) {
        if(element.event_id != null){
            bool status = (await _favoriteUseCase.chkFavoriteEvent(
              element.event_id!
            ));
            eventList.add(element.copyWith(is_favorite : status));
        }else{
            eventList.add(element);
        }        
      } 
      event(data.copyWith(data: eventList));  
    }else{
      event(data);
    }
  }
}