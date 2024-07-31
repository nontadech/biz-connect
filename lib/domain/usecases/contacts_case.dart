import 'package:biz_connect/app/core/usecases/no_param_usecase.dart';
import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/contact_model.dart';
import 'package:biz_connect/domain/repositories/contact_repository.dart';

class ContactsUseCase extends NoParamUseCase<Contact> {
  final ContactRepository _repo;
  ContactsUseCase(this._repo);

  @override
  Future<Contact> execute() {
    return _repo.getMyContactList();
  }

  Future<Body> saveContact(int contactUserID) {
    return _repo.postSaveMyContact(contactUserID);
  }
}
