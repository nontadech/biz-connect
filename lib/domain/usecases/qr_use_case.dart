import 'package:biz_connect/app/core/usecases/no_param_usecase.dart';
import 'package:biz_connect/data/models/qr_model.dart';
import 'package:biz_connect/domain/repositories/qr_repository.dart';


class QRUseCase extends NoParamUseCase<QR> {
  final QRRepository _repo;
  QRUseCase(this._repo);

  @override
  Future<QR> execute() async {
    return _repo.getMyQR();
  }
}
