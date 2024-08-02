// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QRImpl _$$QRImplFromJson(Map<String, dynamic> json) => _$QRImpl(
      my_qr_code_png_base64: json['my_qr_code_png_base64'] as String?,
    );

Map<String, dynamic> _$$QRImplToJson(_$QRImpl instance) => <String, dynamic>{
      'my_qr_code_png_base64': instance.my_qr_code_png_base64,
    };

_$QRContactImpl _$$QRContactImplFromJson(Map<String, dynamic> json) =>
    _$QRContactImpl(
      contact_data: json['contact_data'] == null
          ? null
          : QRContactData.fromJson(
              json['contact_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QRContactImplToJson(_$QRContactImpl instance) =>
    <String, dynamic>{
      'contact_data': instance.contact_data,
    };

_$QRPrivateEventImpl _$$QRPrivateEventImplFromJson(Map<String, dynamic> json) =>
    _$QRPrivateEventImpl(
      data: json['data'] == null
          ? null
          : QRPrivateEventData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QRPrivateEventImplToJson(
        _$QRPrivateEventImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
