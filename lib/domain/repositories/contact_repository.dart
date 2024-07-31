

import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/contact_model.dart';

abstract class ContactRepository {
  Future<Contact> getMyContactList();
  Future<Body> postSaveMyContact(int contactUserID);
}
