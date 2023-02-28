# AddFieldToEmbeddedClass

Repository that can reproduce error when adding a field of type List to an embedded class.

Steps to reproduce error:
Reproduce by:
1. Start application. On startup a collection (User) is initialized and one object is added to the collection.
2. Stop application.
3. Uncomment lines 10 and 14 in Vehicle.dart to add a field to the embedded object.
4. Run command flutter pub run build_runner build
5. Start application again.
This produces the error: RangeError (start): Invalid value: Not in inclusive range 0..12: 20
