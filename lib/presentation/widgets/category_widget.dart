import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/controllers/auth/master_data_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/master_data_controller.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class CategoryWidget extends StatelessWidget {
  final List<dynamic>? userCategory;
  final RxList<dynamic> dataController;
  const CategoryWidget({
    super.key,
    this.userCategory,
    required this.dataController,
  });

  @override
   Widget build(BuildContext context) {
    MasterBinding().dependencies();
    final controller = MasterDataController.call;
    controller.getCategory();
    controller.userCategory(userCategory);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        titleSpacing: 5,
        leading: Container(),
        title: TextCustom(
          text: 'Select Category', 
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
              if(controller.category.isNotEmpty){
                for (var category in controller.category) {
                  if(category.cate_id != null ){
                    widget = [
                      ...widget, 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: TextCustom(
                              text: category.cate_name!, 
                              fontSize: FontSize.h9, 
                              fontWeight: FontWeight.w500, 
                              color: const Color(0xff13315F)
                            ),
                          ),
                          Checkbox(
                            value: controller.userCategory.contains(category.cate_id.toString()),
                            onChanged: (bool? value) {
                              if(value!){
                                dataController.add({
                                  'text': category.cate_name.toString(),
                                  'value': category.cate_id.toString(),
                                });
                                controller.userCategory.add(category.cate_id.toString());
                              }else{
                                dataController.removeWhere((item) => item['value'] == category.cate_id.toString());
                                controller.userCategory.remove(category.cate_id.toString());
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
