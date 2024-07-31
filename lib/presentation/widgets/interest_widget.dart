import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/controllers/auth/master_data_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/master_data_controller.dart';
import 'package:biz_connect/presentation/pages/my_account/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class InterestWidget extends GetView<MyAccountController> {
  final List<dynamic>? userInterest;
  final RxList<dynamic> dataController;
  const InterestWidget({
    super.key,
    this.userInterest,
    required this.dataController,
  });


  @override
   Widget build(BuildContext context) {
    MasterBinding().dependencies();
    final controller = MasterDataController.call;
    controller.getInterest();
    controller.userInterest(userInterest);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        titleSpacing: 5,
        leading: Container(),
        title: TextCustom(
          text: 'Select Interest', 
          fontSize: FontSize.h4, 
          fontWeight: FontWeight.w500, 
          color: const Color(0xff13315F)
        ),
        actions: [
          InkWell(
            onTap: () {
              context.pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: TextCustom(
                text: 'Done', 
                fontSize: FontSize.h7, 
                fontWeight: FontWeight.w500, 
                color: const Color(0xff13315F)
              )
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Obx(
              () {
              List<Widget>  widget = [];
              if(controller.interest.isNotEmpty){
                for (var interest in controller.interest) {
                  if(interest.interest_id != null ){
                    widget = [
                      ...widget, 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: TextCustom(
                              text: interest.interest_name!, 
                              fontSize: FontSize.h9, 
                              fontWeight: FontWeight.w500, 
                              color: const Color(0xff13315F)
                            ),
                          ),
                          Checkbox(
                            value: controller.userInterest.contains(interest.interest_id.toString()),
                            onChanged: (bool? value) {
                              if(value!){
                                dataController.add({
                                  'text': interest.interest_name.toString(),
                                  'value': interest.interest_id.toString(),
                                });
                                controller.userInterest.add(interest.interest_id.toString());
                              }else{
                                dataController.removeWhere((item) => item['value'] == interest.interest_id.toString());
                                controller.userInterest.remove(interest.interest_id.toString());
                              }
                            },
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xffEAF4FF),
                        thickness: 1,
                      ),
                    ];
                  }
                }
                return Column(
                  children: widget,
                );
              }

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
          )
        )
      )
    );
  }
}
