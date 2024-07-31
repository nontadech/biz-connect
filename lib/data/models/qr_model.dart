// ignore_for_file: non_constant_identifier_names
import 'package:biz_connect/domain/entities/qr_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'qr_model.freezed.dart';
part 'qr_model.g.dart';


@freezed
class QR with _$QR  {
  const factory QR({
    String? my_qr_code_png_base64,
  }) = _QR;
  factory QR.fromJson(Map<String, Object?> json)
      => _$QRFromJson(json);
}

@freezed
class QRContact with _$QRContact  {
  const factory QRContact({
    QRContactData? contact_data,
  }) = _QRContact;
  factory QRContact.fromJson(Map<String, Object?> json)
      => _$QRContactFromJson(json);
}
