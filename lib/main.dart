import 'package:add_field_to_embedded_class/vehicle.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import 'user.dart';

void main() async {
  final isar = await Isar.open([UserSchema]);

  var users = await isar.users.where().findAll();

  final newUser =
      User(name: "John Doe", vehicle: Vehicle(manufacturer: "Ford"));
  await isar.writeTxn(() async {
    await isar.users.put(newUser); // insert & update
  });

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
