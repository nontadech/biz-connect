import 'package:biz_connect/domain/entities/contact_entity.dart';
import 'package:biz_connect/presentation/pages/my_contact/view/my_contact_detail.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';


class MyContactPage extends StatelessWidget {
  final ContactData contact;
   const MyContactPage({
    super.key,
    required this.contact
  });

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Back',
        type: AppBarType.back,
      ),
      body: MyContactDetail(
        contact: contact
      )
    );
  }
}
