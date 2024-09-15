import 'package:biz_connect/presentation/pages/download/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/download/view/send_email.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class DownloadsPage extends GetView<DownloadController> {
  final int eventId;
  const DownloadsPage({
    super.key,
    required this.eventId,
  });

  
  Widget getCard(BuildContext context){
    List<Widget> widgetList = [];
    for (var eventFile in controller.eventFile.value.data){
      widgetList.add(
        CardDownload(
          title: eventFile.name!,
          size: 'Size: ${eventFile.size_file}',
          onTap: () {
            context.push(
              '/pdf', 
              extra: {
              'url': eventFile.path_file,
              'title': eventFile.name
              }
            );
          },
        )
      );
      widgetList.add(const SizedBox(height: 10));
    }
    widgetList.add(const SizedBox(height: 20));
    return Column(
      children: widgetList,
    );
  }
  
  @override
   Widget build(BuildContext context) {
    DownloadBinding().dependencies();
   
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Download',
        type: AppBarType.back,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
              child: SingleChildScrollView(
                child: GetX(
                  init: controller,
                  initState: (_){
                    controller.isDataEmtpy(false);
                    controller.isLoading(false);
                    controller.getEventFile(eventId);
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
                    return  getCard(context);
                })
              ),
            ),
          ),
          Obx(() => !controller.isLoading.value ? 
            const SizedBox() : 
            !controller.isDataEmtpy.value ? Positioned(
              bottom: 40,
              left: 25,
              right: 25,
              child: ElevatedButtonCustom(
                text: 'SEND ALL FILES TO YOUR EMAIL',
                onPressed: () {
                  sendEmail(context, eventId);
                  WidgetsBinding.instance.addPostFrameCallback((_){
                    try {
                      
                    } catch (error) {
                      popupStatus(
                        context, 
                        PopupStatusType.error,
                        message: 'Error: ${error.toString()}',
                      );
                    }
                  });
                }
              )
            ) : const SizedBox()
          )
        ],
      )
    );
  }
}
