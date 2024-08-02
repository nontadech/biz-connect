import 'package:biz_connect/app/core/usecases/param_usecase.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:biz_connect/domain/repositories/user_repository.dart';

class ProfileUseCase extends ParamUseCase<UserAttendee, UserEdit> {
  final UserRepository _repo;
  ProfileUseCase(this._repo);

  @override
  Future<UserAttendee> execute(UserEdit params) {
    return _repo.userEdit(params);
  }

  Future<UserAttendee> setImageProfile(String image) {
    return _repo.setImageProfile(image);
  }
}
