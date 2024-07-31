import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:biz_connect/presentation/pages/my_account/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/my_account/view/language_widget.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class MyAccountDetail extends GetView<MyAccountController>{

  const MyAccountDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final authC = AuthController.call;
    MyAccountBinding().dependencies();
    return SingleChildScrollView(
      child: GetX(
        init: controller,
        initState: (state) {
        },
        builder: (_) {
          controller.context(context);
          return Form(
            key: controller.myAccountFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[
                TextCustom(
                  text: 'My Account', 
                  fontSize: FontSize.h7, 
                  fontWeight: FontWeight.w600, 
                  color: const Color(0xff13315F)
                ),
                const SizedBox(height: 10.0),
                SwitchCustom(
                  value: controller.isContact.value,
                  onToggle: (value) {
                    controller.isContact(value);
                  },
                  title: 'Share ny contact to others',
                ),
                const SizedBox(height: 10.0),
                TextCustom(
                  text: 'First name',
                  fontSize: FontSize.h9, 
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff122D58)
                ),
                TextFormFieldCustom(
                  context,
                  controller: controller.firstNameController,
                  hintText: 'First name',
                  validator: (val) {
                    if(val!.isEmpty) {
                      return 'Please enter your first name'.tr();
                    }
                    return null;
                  }
                ),
                const SizedBox(height: 10.0),
                TextCustom(
                  text: 'Last name',
                  fontSize: FontSize.h9, 
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff122D58)
                ),
                TextFormFieldCustom(
                  context,
                  controller: controller.lastNameController,
                  hintText: 'Last name',
                  validator: (val) {
                    if(val!.isEmpty) {
                      return 'Please enter your last name'.tr();
                    }
                    return null;
                  }
                ),
                const SizedBox(height: 10.0),
                TextCustom(
                  text: 'Email', 
                  fontSize: FontSize.h9, 
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff122D58)
                ),
                TextFormFieldCustom(
                  context,
                  controller: controller.emailController,
                  hintText: 'Email',
                  validator: (val) {
                    if(val!.isEmpty) {
                      return 'Please enter your email'.tr();
                    }
                    if(!EmailValidator.validate(val)) {
                      return 'Email is valid';
                    }
                    return null;
                  }
                ),
                const SizedBox(height: 10.0),
                TextCustom(
                  text: 'Mobile phone',
                  fontSize: FontSize.h9, 
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff122D58)
                ),
                TextFormFieldCustom(
                  context,
                  hintText: 'Mobile phone',
                  controller: controller.mobilePhoneController,
                  isNumber: true,
                  validator: (val) {
                    if(val!.isEmpty) {
                      return 'Please enter your mobile phone'.tr();
                    }
                    return null;
                  }
                ),
                const SizedBox(height: 10.0),
                TextCustom(
                  text: 'Position', 
                  fontSize: FontSize.h9, 
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff122D58)
                ),
                TextFormFieldCustom(
                  context,
                  controller: controller.positionController,
                  hintText: 'Position',
                  validator: (val) {
                    if(val!.isEmpty) {
                      return 'Please enter your position'.tr();
                    }
                    return null;
                  }
                ),
                const SizedBox(height: 10.0),
                TextCustom(
                  text: 'Company', 
                  fontSize: FontSize.h9, 
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff122D58)
                ),
                TextFormFieldCustom(
                  context,
                  controller: controller.companyController,
                  hintText: 'Company',
                  validator: (val) {
                    if(val!.isEmpty) {
                      return 'Please enter your company'.tr();
                    }
                    return null;
                  }
                ),
                const SizedBox(height: 10.0),
                SelectMultiple(
                  title: 'Interest',
                  items: controller.userInterest.map<String>((data) => data['text']).toList(),
                  onTap: () { 
                    showBarModalBottomSheet(
                      expand: false,
                      context: context,
                      builder: (context) => InterestWidget(dataController: controller.userInterest, userInterest: controller.userInterest.map<String>((data) => data['value']).toList()));
                  },
                ),
                const SizedBox(height: 10.0),
                SelectMultiple(
                  title: 'Favorite Category Events',
                  items: controller.userCategory.map<String>((data) => data['text']).toList(),
                  onTap: () { 
                    showBarModalBottomSheet(
                      expand: false,
                      context: context,
                      builder: (context) => CategoryWidget(dataController: controller.userCategory, userCategory: controller.userCategory.map<String>((data) => data['value']).toList()),
                    );
                  },
                ),
                const SizedBox(height: 10.0),
                TextCustom(
                  text: 'Setting', 
                  fontSize: FontSize.h7, 
                  fontWeight: FontWeight.w600, 
                  color: const Color(0xff13315F)
                ),
                const SizedBox(height: 10.0),
                SelectOne(
                  title: 'Language',
                  value: controller.lang.value == LangType.en ? 'English' : 'Thai',
                  onTap: () { 
                    showBarModalBottomSheet(
                      expand: false,
                      context: context,
                      builder: (context) => const SizedBox(
                        height: 250,
                        child: LanguageWidget(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10.0),
                SwitchCustom(
                  value: controller.isNotification.value,
                  onToggle: (value) {
                    controller.isNotification(value);
                  },
                  title: 'Notification',
                ),
                const SizedBox(height: 10.0),
                
                InkWell(
                  onTap: () {
                    authC.logout();
                    context.go('/home');
                  },
                  child: TextCustom(
                    text: 'Logout', 
                    fontSize: FontSize.h7, 
                    fontWeight: FontWeight.w500, 
                    color: const Color(0xffFF3A44),
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xffFF3A44),
                  ),
                ),  
                const SizedBox(height: 100.0),
              ],
            ),
          );
        } 
      ),
    );
  }
}