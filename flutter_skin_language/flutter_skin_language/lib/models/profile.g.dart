// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile()
    ..locale = json['locale'] as String
    ..theme = json['theme'] as num;
}

Map<String, dynamic> _$ProfileToJson(Profile instance) =>
    <String, dynamic>{'locale': instance.locale, 'theme': instance.theme};
