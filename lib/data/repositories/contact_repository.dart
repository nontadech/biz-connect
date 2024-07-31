import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/contact_model.dart';
import 'package:biz_connect/data/providers/network/apis/contact_api.dart';
import 'package:biz_connect/domain/repositories/contact_repository.dart';

class ContactRepositoryIml extends ContactRepository {

  @override
  Future<Contact> getMyContactList() async {
    final response = await ContactAPI.getMyContactList().request();
    return Contact.fromJson(response);
  }

  @override
  Future<Body> postSaveMyContact(int contactUserID) async {
    final response = await ContactAPI.postSaveMyContact(contactUserID).request();
    return Body.fromJson(response);
  }
  
}
