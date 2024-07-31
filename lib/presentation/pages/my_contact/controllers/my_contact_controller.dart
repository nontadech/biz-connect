import 'dart:developer';
import 'package:biz_connect/data/models/contact_model.dart';
import 'package:biz_connect/domain/usecases/contacts_case.dart';
import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
// ignore: library_prefixes
import 'package:contacts_service/contacts_service.dart' as contactsService;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyContactController extends GetxController {
  MyContactController(this._contactsUseCase);
  final ContactsUseCase _contactsUseCase;
  final Rx<Contact> contact = const Contact().obs;
  Rx<BuildContext> context = NavigationService.navigatorKey.currentContext!.obs;

  getMyContactList() async {
    try {
      contact.value = await _contactsUseCase.execute();
    } catch (error) {
      log('error ${error.toString()}');
    }
  }

   addContact(contact) async {

    try {
      contactsService.Contact newContact = contactsService.Contact(
        givenName: contact.first_name,
        familyName: contact.last_name,
        emails: [contactsService.Item(label: 'work', value: contact.email)],
        phones: [contactsService.Item(label: 'mobile', value: contact.phone)]
      );
      await contactsService.ContactsService.addContact(newContact);
      popupStatus(
        NavigationService.navigatorKey.currentContext!, 
        PopupStatusType.sucess, 
        message: 'Contact added successfully',
        onPressed:() {
            //  context.value.pop();
        },
      );
    } catch (error) {
      log('error ${error.toString()}');
    }
   }
}