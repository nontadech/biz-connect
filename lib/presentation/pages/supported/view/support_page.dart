
import 'package:biz_connect/presentation/pages/supported/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SupportPage extends GetView<SupportController> {
  final int eventId;
  const SupportPage({
    super.key,
    required this.eventId,
 });


  @override
   Widget build(BuildContext context) {
    SupportBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Supported',
        type: AppBarType.back,
      ),
      body: Padding(
        padding: const EdgeInsets.only( top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: GetX(
            init: controller,
            initState: (_){
              controller.isLoading(false);
              controller.getPartners(eventId);
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
              return Center(
                child: Wrap(
                  alignment:WrapAlignment.spaceEvenly,
                  children: [
                  for (var member in controller.partners.value.data!.group_left!.member_list)
                    Container(
                      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 15),
                      width: 103,
                      height: 103,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: const Color(0xffe5e5e5),
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: CachedNetworkImage(
                          imageUrl: member.logo_url,
                          width: 41, 
                          placeholder: (BuildContext context, String url) => const CircularProgressIndicator(),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        )
                      )
                    )
                  ]
                ),
              );
            }
          )
        ),
      )
    );
  }
}
