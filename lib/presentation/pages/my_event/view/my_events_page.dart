import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:biz_connect/presentation/pages/my_event/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';


class MyEventsPage extends GetView<MyEventController> {
  const MyEventsPage({super.key});
  
  @override
   Widget build(BuildContext context) {
    final authC = AuthController.call;
    MyEventBinding().dependencies();
    if(!authC.isLoggedIn.value){
       return Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
              Image.asset(
                'assets/icons/logo.png',
                width: 123,
              ),
              Padding(padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 50.0),
                child: ElevatedButtonCustom(
                  onPressed: () {
                    context.push('/sign_in');
                  },
                  text: 'Sign In',
                )
              )
           ],
         ),
       );
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'My Event',
        type: AppBarType.reload,
        tap: () {
          controller.isLoad(true);
          controller.getMyEventStat();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: GetX(
            init: controller,
            initState: (state) {
              controller.isLoading(false);
              controller.getMyEventStat();
            },
            builder: (_) {
              if(!controller.isLoading.value){
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
          
              final myEventStat = controller.event.value?.my_event_stat;
              return Column(
                children: [
                  CardEvent(
                    isLoad: controller.isLoad.value!,
                    title: 'Today Event',
                    count: myEventStat!.my_today_joining.toString(),
                    onTap: () {
                      if(myEventStat.my_today_joining == 0){
                        return;
                      }
                      context.push('/my_event', extra: {'events': myEventStat.join_event_today});
                    },
                  ),
                  const SizedBox(height: 10),
                  CardEvent(
                    isLoad: controller.isLoad.value!,
                    title: 'Upcoming Event',
                    count: myEventStat.my_joining.toString(),
                    onTap: () {
                      if(myEventStat.my_joining == 0){
                        return;
                      }
                      context.push('/my_event', extra: {'events': myEventStat.join_event_data});
                    },
                  ),
                  const SizedBox(height: 10),
                  CardEvent(
                    isLoad: controller.isLoad.value!,
                    title: 'Past Event',
                    count: myEventStat.my_hist_joining.toString(),
                    onTap: () {
                      if(myEventStat.my_hist_joining == 0){
                        return;
                      }
                      context.push('/my_event', extra: {'events': myEventStat.join_hist_event_data});
                    },
                  ),
                  const SizedBox(height: 10),
                ]
              );
            }
          )
        ),
      )
    );
  }
}
