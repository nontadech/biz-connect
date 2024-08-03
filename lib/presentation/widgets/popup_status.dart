import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum PopupStatusType {
  sucess,
  error,
}

Future<void> popupStatus(BuildContext context, PopupStatusType type, {
  String? message,
  Function? onPressed,
  isLoad = false
  }) {
  return showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      content: isLoad ? Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,
              height: 100,  
              padding: const EdgeInsets.all(20.0),
              child: const CircularProgressIndicator(),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextCustom(
              text: 'Loading', 
              fontSize: FontSize.h5, 
              fontWeight: FontWeight.w600,
              color: const Color(0xff1D1D1B),
              height: 1.2,
            ),
          ],
        ) :  Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,
              height: 100,  
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: type == PopupStatusType.sucess
                  ? const Color(0xffEAF4FF)
                  : const Color(0xffFEEFEF),
              ),
              child: type == PopupStatusType.sucess ? 
               SvgPicture.asset(
                'assets/icons/sucess.svg',
              ) :
              SvgPicture.asset(
                'assets/icons/error.svg',
                colorFilter: const ColorFilter.mode(
                  Colors.red,
                  BlendMode.srcIn,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextCustom(
              text: type == PopupStatusType.sucess ?  'Success' : 'Error', 
              fontSize: FontSize.h5, 
              fontWeight: FontWeight.w600,
              color: const Color(0xff1D1D1B),
              height: 1.2,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextCustom(
              text: message!, 
              fontSize: FontSize.h9, 
              fontWeight: FontWeight.w400,
              color: const Color(0xff1D1D1B),
              height: 1.2,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: ElevatedButtonCustom(
                text: 'CLOSE',
                onPressed: () {
                  Navigator.pop(context);
                  if(onPressed != null){
                    onPressed();
                  }
                },
              ),
            ),
          ],
        ),
      )
    )
  );
}
