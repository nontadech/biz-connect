import 'package:biz_connect/presentation/pages/private_event/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivateEventForm extends GetView<PrivateEventController> {
  final BuildContext popppContext;
  const PrivateEventForm({
    super.key,
    required this.popppContext
  });

  @override
  Widget build(BuildContext context) {
    PrivateEventBinding().dependencies();
    controller.context.value = context;
    controller.qrController.clear();
    return Form(
      key: controller.privateEventFormKey,
      child: Column(
        children: [
          TextFormFieldCustom(
            context,
            controller: controller.qrController,
            autofocus: true,
            hintText: 'Enter code',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter code';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButtonCustom(
            text: 'Submit',
            onPressed: () {
              controller.getPriveEvent();
            }
          ),
          const SizedBox(
            height: 15.0,
          ),
          ElevatedButtonOutlineBorder(
            text: 'Close',
            onPressed: () {
              Navigator.pop(popppContext);
              controller.isLoading(true);
            }
          ),
        ],
      )
    );
  }
}