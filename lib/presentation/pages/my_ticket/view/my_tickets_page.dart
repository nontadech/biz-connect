import 'package:biz_connect/presentation/pages/my_ticket/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/my_ticket/view/my_ticket_list.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTicketsPage extends GetView<MyTicketController> {
  const MyTicketsPage({super.key});

  @override
   Widget build(BuildContext context) {
    MyTicketBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'My Ticket',
        type: AppBarType.back,
      ),
      body: RefreshIndicator(
        color: Colors.white,
        backgroundColor: Colors.blue,
        onRefresh: () async {
          controller.fetchData();
        },
        child: GetX(
          init: controller,
          initState: (state) {
            controller.fetchData();
          },
          builder: (_) {
            if(controller.ticket.value.tickets.isEmpty){
              return const Column(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Center(
                    child: CircularProgressIndicator(),
                  )
                ],
              );
            }
            return MyTicketList(
              tickets: controller.ticket.value.tickets,
            );
          }
        )
      ),
    );
  }
}
