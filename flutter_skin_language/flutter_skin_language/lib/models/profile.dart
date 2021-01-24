import 'package:json_annotation/json_annotation.dart';
part 'profile.g.dart';
@JsonSerializable()
class Profile{
  Profile();

  String locale;
  num theme;

  factory Profile.fromJson(Map<String,dynamic> json) => _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}