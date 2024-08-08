import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/pages/download/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardAgenda extends StatelessWidget {
  final VoidCallback onTap;
  final String time;
  final String title;
  final String location;
  final List<Files> files;

  const CardAgenda({
    super.key,
    required this.onTap,
    required this.title,
    required this.location,
    required this.time,
    required this.files,
  });

  Widget getFile(BuildContext context){
    List<Widget> widgetList = [];
    List<Widget> widgetExpandChild = [];
    int number = 0;
    for (var file in files) {
      if(number == 0){
        widgetList.add(
          CardDownload(
            title: file.title!,
            size: file.size!,
            onTap: () {
              DownloadBinding().dependencies();
              final downloadC = DownloadController.call;
              downloadC.context(context);
              downloadC.downloadFile(
                EventFileData(
                  id: file.id,
                  name: file.title,
                  size_file: file.size,
                  path_file: file.file
                )
              );
            },
          )
        );
      }else{
        widgetExpandChild.add(
          CardDownload(
            title: file.title!,
            size: file.size!,
            onTap: () {
              DownloadBinding().dependencies();
              final downloadC = DownloadController.call;
              downloadC.context(context);
              downloadC.downloadFile(
                EventFileData(
                  id: file.id,
                  name: file.title,
                  size_file: file.size,
                  path_file: file.file
                )
              );
            },
          )
        );
      }
     
      number++;
    }
    return Column(
      children: [
        ...widgetList,
        widgetExpandChild.isNotEmpty ? ExpandChild(
          indicatorBuilder: (context, onTap, expanded) => InkWell(
            onTap: onTap,
            child: expanded ? SvgPicture.asset(
              'assets/icons/arrow_up.svg',
              width: 24,
              height: 24,
            ) : SvgPicture.asset(
              'assets/icons/arrow_down.svg',
              width: 24,
              height: 24,
            ),
          ),
          child: Column(
            children: widgetExpandChild,
          )
        ) : const SizedBox(),
      ],
    );
        
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xffEAF4FF),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextCustom(
                      text: time, 
                      fontSize: FontSize.h9, 
                      fontWeight: FontWeight.w600, 
                      color: const Color(0xff13315F)
                    ),
                    SvgPicture.asset(
                      'assets/icons/arrow_right.svg',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
                TextCustom(
                  text: title, 
                  fontSize: FontSize.h7, 
                  height: 1,
                  fontWeight: FontWeight.w400, 
                  color: const Color(0xff13315F)
                ),
                const SizedBox(
                  height: 10,
                ),
                TextIcon(
                  title: location, 
                  fontSize: FontSize.h9,
                  icon: SvgPicture.asset(
                    'assets/icons/location.svg',
                    width: 24,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          getFile(context)
        ],
      ),
    );
  }
}