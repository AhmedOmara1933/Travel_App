import 'package:flutter/material.dart';
import 'package:travelea_app/modules/welcome_screen.dart';

import 'modules/details_screen.dart';
import 'modules/travel_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:DetailsScreen(),
      ),
    );
  }
}
