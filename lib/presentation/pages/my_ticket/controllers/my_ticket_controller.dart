import 'dart:developer';
import 'package:biz_connect/data/models/ticket_model.dart';
import 'package:biz_connect/domain/usecases/ticket_detail_use_case.dart';
import 'package:biz_connect/domain/usecases/ticket_use_case.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class MyTicketController extends GetxController {
  static MyTicketController get call => Get.find();
  MyTicketController(this._ticketUseCase, this._ticketDetailUseCase);
  final TicketUseCase _ticketUseCase;
  final TicketDetailUseCase _ticketDetailUseCase;
  final Rx<Ticket> ticket = const Ticket().obs;
  final Rx<Ticket> ticketDetail = const Ticket().obs;
  final Rx<int> index = 0.obs;
  final CarouselController carouselController = CarouselController();
  final RxBool isLoading = false.obs;
  final RxBool isDataEmtpy = false.obs;
    
  fetchData() async {
    isLoading(false);
    isDataEmtpy(false);
    try {
      ticket.value = await _ticketUseCase.execute();
      isDataEmtpy(ticket.value.tickets.isEmpty);
      isLoading(true);
    } catch (error) {
      isDataEmtpy(true);
      log('error ${error.toString()}');
    }
  }

  fetchDataDetail(int eventId) async {
    try {
      ticketDetail.value = await _ticketDetailUseCase.execute(eventId);

    } catch (error) {
      log('error ${error.toString()}');
    }
  }
}
