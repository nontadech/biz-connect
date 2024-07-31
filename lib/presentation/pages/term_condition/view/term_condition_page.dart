import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/policy_entity.dart';
import 'package:biz_connect/presentation/pages/term_condition/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/term_condition/view/term_condition_detail.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class TermConditionPage extends GetView<TermConditionController> {
  const TermConditionPage({super.key});

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
            initState: (_) => controller.fetchData(),
            builder: (_) {
              if (controller.policy.value.data == null) {
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
                      text: 'Terms and Conditions for Membership', 
                      fontSize: FontSize.h6, 
                      fontWeight: FontWeight.w600, 
                      color: const Color(0xff13315F)
                    ),
                  ),
                  TermConditionDetail(
                    subject: 'Consent to collect, use or disclose personal information',
                    isSuccess: controller.policy.value.data!.is_pdpa == 1 ? true : false,
                    onTap: () {
                      context.push('/profile/term_condition/accept', extra: {
                        'isAccept': controller.policy.value.data!.is_pdpa == 1 ? true : false,
                        'policyType': TermConditionType.pdpa,
                        'title': 'Consent to collect, use or disclose personal information',
                      });
                    },
                  ),
                  TermConditionDetail(
                    subject: 'Terms and conditions for applying for membership in using Face Recondition',
                    isSuccess: controller.policy.value.data!.is_recondition == 1 ? true : false,
                    onTap: () {
                      context.push('/profile/term_condition/accept', extra: {
                        'isAccept': controller.policy.value.data!.is_recondition == 1 ? true : false,
                        'policyType': TermConditionType.recondition,
                        'title': 'Terms and conditions for applying for membership in using Face Recondition',
                      });
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
