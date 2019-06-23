import 'package:flutter/material.dart';
import 'profile_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    title: 'Developer Resume',
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
    home: ProfileFourPage(),
  ));
}
