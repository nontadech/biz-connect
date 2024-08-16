import 'dart:developer';
import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/domain/usecases/favorite_use_case.dart';
import 'package:get/get.dart';

class MyFavoriteController extends GetxController {
  MyFavoriteController(this._favoriteUseCase);
  static MyFavoriteController get call => Get.find();
  final FavoriteUseCase _favoriteUseCase;
  final store = Get.find<LocalStorageService>();
  var favorite = Rx<PopularEvent?>(null);
  
  @override
  void onInit() async {
    getFavorite();
    super.onInit();
  }

  fetchData() async {
    await getFavorite();
  }
  
  getFavorite() async {
    try {
      final data = await _favoriteUseCase.execute();
      Future.wait([waitConstructor(data)]);
   
    } catch (error) {
      log('error ${error.toString()}');
    }
  }

  setFavoriteEvent(int eventId) async{
    bool status = await _favoriteUseCase.setFavoriteEvent(eventId);
    List<EventList> eventList = [];
    for (EventList element in favorite.value!.data) {
      if(element.event_id == eventId){
          eventList.add(element.copyWith(is_favorite : status));
      }else{
          eventList.add(element);
      }        
    } 
    favorite(favorite.value!.copyWith(data: eventList));  
  }

  Future<void> waitConstructor(data) async {
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
      favorite(data.copyWith(data: eventList));  
  }
}