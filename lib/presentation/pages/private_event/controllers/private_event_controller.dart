import 'package:biz_connect/domain/usecases/private_event_use_case.dart';
import 'package:get/get.dart';

class PrivateEventController extends GetxController {
  PrivateEventController(this._privateEventUseCase);
  final PrivateEventUseCase _privateEventUseCase;


  
  getPriveEvent(String contactQRCode) async {
    await _privateEventUseCase.execute(contactQRCode);
  }
}