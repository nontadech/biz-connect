import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/sign_up/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class SignUpPageForm extends GetView<SignUpController>{
  const SignUpPageForm({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX(
      init: controller,
      initState: (state) {
      },
      builder: (_) {
        controller.context(context);
        return Form(
          key: controller.signUpPageFormKey,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0, bottom: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextCustom(
                        text: 'Email', 
                        required: true,
                        fontSize: FontSize.h9, 
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff122D58)
                      ),
                      TextFormFieldCustom(
                        context,
                        autofocus: true,
                        controller: controller.emailController,
                        hintText: 'Email',
                        onChanged: (val) {
                          controller.checkFrom();
                        },
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
                        text: 'Password',
                        required: true,
                        fontSize: FontSize.h9, 
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff122D58)
                      ),
                      TextFormFieldCustom(
                        context,
                        hintText: 'Password',
                        onChanged: (val) {
                          controller.checkFrom();
                        },
                        controller: controller.passwordController,
                        obscureText: true,
                        validator: (val) {
                          if(val!.isEmpty) {
                            return 'Please enter your password'.tr();
                          }
                          if(val.length < 8) {
                            return 'Password must be at least 8 characters'.tr();
                          }
                          return null;
                        }
                      ),
                      const SizedBox(height: 10.0),
                      TextCustom(
                        text: 'Confirm Password', 
                        required: true,
                        fontSize: FontSize.h9, 
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff122D58),
                      ),
                      TextFormFieldCustom(
                        context,
                        hintText: 'Confirm Password',
                        onChanged: (val) {
                          controller.checkFrom();
                        },
                        obscureText: true,
                        controller: controller.confirmPasswordController,
                        validator: (val){
                          if(val!.isEmpty) {
                            return 'Please enter your confirm password'.tr();
                          }
                          if(val != controller.passwordController.text) {
                            return 'Not Match';
                          }
                          return null;
                        }
                      ),
                      const SizedBox(height: 10.0),
                      TextCustom(
                        text: 'First name', 
                        required: true,
                        fontSize: FontSize.h9, 
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff122D58)
                      ),
                      TextFormFieldCustom(
                        context,
                        controller: controller.firstNameController,
                        hintText: 'First name',
                        onChanged: (val) {
                          controller.checkFrom();
                        },
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
                        required: true,
                        fontSize: FontSize.h9, 
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff122D58)
                      ),
                      TextFormFieldCustom(
                        context,
                        controller: controller.lastNameController,
                        hintText: 'Last name',
                        onChanged: (val) {
                          controller.checkFrom();
                        },
                        validator: (val) {
                          if(val!.isEmpty) {
                            return 'Please enter your last name'.tr();
                          }
                          return null;
                        }
                      ),
                      const SizedBox(height: 10.0),
                      TextCustom(
                        text: 'Mobile phone', 
                        required: true,
                        fontSize: FontSize.h9, 
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff122D58)
                      ),
                      TextFormFieldCustom(
                        context,
                        controller: controller.mobilePhoneController,
                        hintText: 'Mobile phone',
                        isNumber: true,
                        onChanged: (val) {
                          controller.checkFrom();
                        },
                        validator: (val) {
                          if(val!.isEmpty) {
                            return 'Please enter your mobile phone'.tr();
                          }
                          return null;
                        }
                      ),
                      const SizedBox(height: 10.0),
                      TextCustom(
                        text: 'Company', 
                        required: true,
                        fontSize: FontSize.h9, 
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff122D58)
                      ),
                      TextFormFieldCustom(
                        context,
                        controller: controller.companyController,
                        hintText: 'Company',
                        onChanged: (val) {
                          controller.checkFrom();
                        },
                        validator: (val) {
                          if(val!.isEmpty) {
                            return 'Please enter your company'.tr();
                          }
                          return null;
                        }
                      ),
                      const SizedBox(height: 10.0),
                      TextCustom(
                        text: 'Position', 
                        required: true,
                        fontSize: FontSize.h9, 
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff122D58)
                      ),
                      TextFormFieldCustom(
                        context,
                        controller: controller.positionController,
                        hintText: 'Position',
                        onChanged: (val) {
                          controller.checkFrom();
                        },
                        validator: (val) {
                          if(val!.isEmpty) {
                            return 'Please enter your position'.tr();
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
                            builder: (context) => InterestWidget(
                              dataController: controller.userInterest, 
                              userInterest: controller.userInterest.map<String>((data) => data['value']).toList() 
                            ),
                          );
                        },
                      ),
                      controller.userInterest.isEmpty ? const SizedBox(height: 60.0) : const SizedBox(height: 10.0),
                      SelectMultiple(
                        title: 'Favorite Category Events',
                        items: controller.userCategory.map<String>((data) => data['text']).toList(),
                        onTap: () { 
                          showBarModalBottomSheet(
                            expand: false,
                            context: context,
                            builder: (context) => CategoryWidget(
                              dataController: controller.userCategory, 
                              userCategory: controller.userCategory.map<String>((data) => data['value']).toList()
                            ),
                          );
                        },
                      ),
                      controller.userCategory.isEmpty ? const SizedBox(height: 160.0) : const SizedBox(height: 100.0),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ButtonPositionBottom(
                  text: 'Done',
                  isDisabled: controller.checkDisabled.value,
                  onPressed: () {
                    controller.userSignUp();
                  }
                )
              )
            ],
          )
        );
      }
    );
  }
}