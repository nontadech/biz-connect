import 'package:biz_connect/presentation/pages/zone/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ZonePage extends GetView<ZoneController> {
  final int eventId;
  const ZonePage({
    super.key,
    required this.eventId
  });

  Widget getCard(BuildContext context) {
    List<Widget> widgetList = [];
    for (var element in controller.floorPlan.value.data) {
      widgetList.add(
        CardZone(
          title: element.fl_title!,
          onTap: () {
            popupPicture(
              context,
              element.image_url!,
            );
          },
        )
      );
    }

    return Column(
      children: widgetList
    );
  }
  @override
   Widget build(BuildContext context) {
    ZoneBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Floor plan',
        type: AppBarType.back,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: GetX(
            init: controller,
            initState: (_) {
              controller.getFloorPlan(eventId);
            },
            builder: (_){
              if(!controller.isLoading.value || controller.isDataEmtpy.value){
                return Column(
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    Center(
                      child: controller.isDataEmtpy.value ? const EmptyPage() : const CircularProgressIndicator(),
                    )
                  ],
                );
              }
              return getCard(context);
            }
          )
        ),
      )
    );
  }
}
