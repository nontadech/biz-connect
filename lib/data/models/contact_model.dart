// ignore_for_file: non_constant_identifier_names
import 'package:biz_connect/domain/entities/contact_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'contact_model.freezed.dart';
part 'contact_model.g.dart';


@freezed
class Contact with _$Contact  {
  const factory Contact({
    @Default([]) List<ContactData> contact_list
  }) = _Contact;
  factory Contact.fromJson(Map<String, Object?> json)
      => _$ContactFromJson(json);
}
