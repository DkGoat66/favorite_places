// Importing necessary packages fro Flutter, custom fonts, and screen navigation 
import 'package:favorite_places/screens/places.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
//Define a color schem using the seed color and dark brightness
final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 102, 6, 247),
  background: const Color.fromARGB(255, 56, 49, 66),
);
// Define the theme data for the app, using Material3 and custom settings
final theme = ThemeData().copyWith(
  useMaterial3: true,
  scaffoldBackgroundColor: colorScheme.background,
  colorScheme: colorScheme,
  //   // Use Google Fonts for custom typography, specifically 'Ubuntu Condensed'
  textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
    titleSmall: GoogleFonts.ubuntuCondensed(
      //Bold font for small title
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.ubuntuCondensed(
      // Bold font for medium title
      fontWeight: FontWeight.bold, 
      
    ),
    titleLarge: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
  ),
);

void main() {
  runApp(
    MaterialApp(
      title: 'Great place',
      theme: theme,
      home: const PlacesScreen(),
    ),
  );
}
