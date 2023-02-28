import 'package:add_field_to_embedded_class/vehicle.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
@collection
class User {
  final Id id = Isar.autoIncrement;
  final String? name;
  final Vehicle? vehicle;

  User({
    this.name,
    this.vehicle,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
