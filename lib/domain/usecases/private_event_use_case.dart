import 'package:biz_connect/app/core/usecases/param_usecase.dart';
import 'package:biz_connect/data/models/qr_model.dart';
import 'package:biz_connect/domain/repositories/qr_repository.dart';


class PrivateEventUseCase extends ParamUseCase<QRPrivateEvent, String> {
  final QRRepository _repo;
  PrivateEventUseCase(this._repo);

  @override
  Future<QRPrivateEvent> execute(String params) {
    return _repo.getQRPrivateEvent(params);
  }
}
