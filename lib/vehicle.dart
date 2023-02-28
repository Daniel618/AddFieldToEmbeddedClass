import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vehicle.g.dart';

@JsonSerializable()
@embedded
class Vehicle {
  final String? manufacturer;
  // Uncomment line 10 and 14 and run "flutter pub run build_runner build" to add a new field to this class.
  // final List<String> destinations;

  Vehicle({
    this.manufacturer,
    //this.destinations = const [],
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleToJson(this);
}
