
import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/policy_entity.dart';
import 'package:biz_connect/presentation/pages/term_condition/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermConditionAcceptPage extends GetView<TermConditionController> {
  final bool isAccept;
  final TermConditionType policyType;
  final String title;
  const TermConditionAcceptPage({
    super.key,
    required this.isAccept,
    required this.policyType,
    required this.title
  });

  @override
   Widget build(BuildContext context) {
    TermConditionBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Term and Condition',
        type: AppBarType.back,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: GetX(
            init: controller,
            initState: (_) {
              controller.context.value = context;
              controller.getDetail(policyType);
            },
            builder: (_) {
              if (controller.policyDetail.value.data == null) {
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
              return Column(
                children: [
                  Center(
                    child: TextCustom(
                      textAlign: TextAlign.center,
                      text: title, 
                      fontSize: FontSize.h6, 
                      fontWeight: FontWeight.w600, 
                      color: const Color(0xff13315F)
                    ),
                  ),
                   Center(
                    child: TextCustom(
                      textAlign: TextAlign.center,
                      text: controller.policyDetail.value.data!.description!, 
                      fontSize: FontSize.h7, 
                      fontWeight: FontWeight.w400, 
                      color: const Color(0xff13315F)
                    ),
                  ),
                  const SizedBox(height: 20),
                  !isAccept ? ElevatedButtonCustom(
                    text: 'Accept',
                    onPressed: () {
                      controller.savePolicy(policyType, true);
                    },
                  ) :
                  ElevatedButtonOutlineBorder(
                    text: 'Decline',
                    onPressed: () {
                      controller.savePolicy(policyType, false);
                    },
                  ),
                ]
              );
            }
          ),
        ),
      )
    );
  }
}
