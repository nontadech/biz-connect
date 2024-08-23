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
  final RxBool isLoading = false.obs;
  final RxBool isDataEmtpy = false.obs;
  

  fetchData() async {
    await getFavorite();
  }
  
  getFavorite() async {
    isLoading(false);
    isDataEmtpy(false);
    try {
      favorite.value = await _favoriteUseCase.execute();
      isLoading(true);
    } catch (error) {
      isDataEmtpy(true);
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

}