import 'package:barca_app/components/appbar_comp.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  /**
   * Icon sizes 30
   * font sizes
   * normal font 16
   * headings 25
   * 
   */

  void something() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //end of app bar container
          AppbarComp(),

          ListView(
            children : <Widget>[

            ],
          ),

          // M A I N B O D Y

          /**
           * What to do
           * Create another file for the appbar components
           * and make the whole scaffold a list view and scrollable
           * 
           * using listviews
           */

          Container(
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
          ),

        ],
      ), // This is the main last column
    );
  }
}
