// Importing the 'uuid' package which provides utilities for generating UUIDs (Universally Unique Identifiers).
import 'package:uuid/uuid.dart';
// Creating a constant instance of the Uuid class to generate unique IDs.
const uuid = Uuid();

class Place {
  Place({required this.title}) : id = uuid.v4();
  final String id;
  final String title;
}
