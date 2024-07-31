import 'package:biz_connect/domain/entities/contact_entity.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyContactList extends StatelessWidget {
  final List<ContactData> contacts;
  
  const MyContactList({
    super.key,
    required this.contacts,
  });

  getCardWidgets(BuildContext context){
    List<Widget> widgetList = [];
    for(var i = 0; i < contacts.length; i++){
      widgetList.add(
        Center(
          child: CardContact(
            fullName: '${contacts[i].first_name} ${contacts[i].last_name}',
            position: contacts[i].position!,
            url: contacts[i].profile_image!,
            onTap: () {
              context.push('/profile/my_contact', extra: {'contact' :contacts[i]});
            },
          )
        )
      );
    }
    return Column(
        children: widgetList
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: getCardWidgets(context),
    );
  }
}