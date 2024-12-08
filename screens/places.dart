import 'package:favorite_places/screens/add_place.dart';
import 'package:favorite_places/widgets/places_list.dart';
import 'package:flutter/material.dart';
// Stateless widget representing the main screen where a list of favorite places is shown.
class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            // Creating an AppBar with a title and an action button.
      appBar: AppBar(
        // title of the appbar
        title: const Text('Your places'),
        actions: [
          // Icon button
          IconButton(
            // onPressed
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const AddPlaceScreen(),
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: const PlacesList(
        places: [],
      ),
    );
  }
}
