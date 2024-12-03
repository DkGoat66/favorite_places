// Importing the required packages
import 'package:favorite_places/models/place.dart';
import 'package:flutter/material.dart';
//Defining a statelesss widged called PlacesList
class PlacesList extends StatelessWidget {
  // COnstructor to accept a list of places 
  const PlacesList({super.key, required this.places});
  final List<Place> places;
  // Overriding the build method, which returns the widget UI
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (places.isEmpty) {
      return const Center(
        child: Text('No places add yet'),
      );
    }
//ListView
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (ctx, index) => ListTile(
        title: Text(
          places[index].title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      ),
    );
  }
}
