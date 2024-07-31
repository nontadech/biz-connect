import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_controller.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

Future<void> popupLoading(BuildContext context) {
  LoadingBinding().dependencies();
  return showDialog<void>(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      final loadingC = LoadingController.call;
      loadingC.buildContext(context);
      return AlertDialog(
        content: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
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
          ),
        )
      );
    }
  );
}
