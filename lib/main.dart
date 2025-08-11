import 'package:barca_app/components/carousel_example.dart';
import 'package:barca_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/**
 * Barca color Codes
 *  Gold Color(0xFFEDBB00)
 *  Maroon Color(0xFFA50044)
 *  Blue Color(0xFF004D98)
 *  White Color(0xFFFFFFFF)
 *  Red Color(0xFFDB0030)
 *  Yellow Color(0xFFFFED02)
 *  Black Color(0xFF000000)
 */
void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
        // body: CarouselExample(),
      ),
    );
  }
}
