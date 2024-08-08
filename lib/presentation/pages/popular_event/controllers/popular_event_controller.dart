import 'dart:developer';
import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/domain/usecases/event_use_case.dart';
import 'package:biz_connect/domain/usecases/favorite_use_case.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:get/get.dart';

class PopularEventController extends GetxController {
  PopularEventController(this._eventUseCase, this._favoriteUseCase);
  static PopularEventController get call => Get.find();
  final EventUseCase _eventUseCase;
  final FavoriteUseCase _favoriteUseCase;
  final store = Get.find<LocalStorageService>();
  var evant = Rx<PopularEvent?>(null);
  final Rx<bool> isFavorite = false.obs;
  
  @override
  void onInit() async {
    getEvent();
    super.onInit();
  }

  fetchData() async {
    await getEvent();
  }

  setFavoriteEvent(int eventId) async{
    bool status = await _favoriteUseCase.setFavoriteEvent(eventId);
    List<EventList> evantList = [];
    for (EventList element in evant.value!.data) {
      if(element.event_id == eventId){
          evantList.add(element.copyWith(is_favorite : status));
      }else{
          evantList.add(element);
      }        
    } 
    evant(evant.value!.copyWith(data: evantList));  
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
      List<EventList> evantList = [];
      for (EventList element in data.data!) {
        if(element.event_id != null){
            bool status = (await _favoriteUseCase.chkFavoriteEvent(
              element.event_id!
            ));
            evantList.add(element.copyWith(is_favorite : status));
        }else{
            evantList.add(element);
        }        
      } 
      evant(data.copyWith(data: evantList));  
    }else{
      evant(data);
    }
  }
}