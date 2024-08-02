
import 'package:biz_connect/app/core/usecases/param_usecase.dart';
import 'package:biz_connect/data/models/qr_model.dart';
import 'package:biz_connect/domain/repositories/qr_repository.dart';


class ScanUseCase extends ParamUseCase<QRContact, String> {
  final QRRepository _repo;
  ScanUseCase(this._repo);

  @override
  Future<QRContact> execute(String params) async {
    return _repo.getQRContactInformation(params);
  }
}
