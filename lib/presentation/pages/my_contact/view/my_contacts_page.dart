import 'package:biz_connect/presentation/pages/my_contact/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/my_contact/view/my_contact_list.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MyContactsPage extends GetView<MyContactController> {
  const MyContactsPage({super.key});

  @override
   Widget build(BuildContext context) {
    MyContactBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'My Contact',
        type: AppBarType.back,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: GetX(
          init: controller,
          initState: (state){
            controller.getMyContactList();
          },
          builder: (_){
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
            if(controller.isDataEmtpy.value){
              return Column(
                children: [
                  const SizedBox(
                    height: 200,
                  ),
                  Center(
                    child: EmptyPage(
                      icon: SvgPicture.asset('assets/icons/profile_empty.svg'),
                      text: 'You don`t have any contact'
                    ),
                  )
                ],
              );
            }
            return MyContactList(
              contacts :controller.contact.value.contact_list
            );
        })
      )
    );
  }
}
