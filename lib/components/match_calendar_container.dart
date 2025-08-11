import 'package:flutter/material.dart';

class MatchCalendarContainer extends StatelessWidget {
  const MatchCalendarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8), // Grey shadow with opacity
            spreadRadius: 1, // Spread of the shadow
            blurRadius: 10, // Blurred shadow effect
            offset: Offset(-10,
                15), // Left-leaning shadow (negative x offset, positive y for a subtle bottom shift)
          ),
        ],
      ),
      child: Column(
        children: [
          // Upper Part
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFF004D98),
            ),
            child: Row(
              children: [
                // Date
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "25",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Month and Day
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Day
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "WEDNESDAY",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),

                    // Month
                    Text(
                      "SEPTEMBER",
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
          ),

          SizedBox(
            height: 25,
          ),

          // Middle part
          Container(
            child: Column(
              children: [
                // laliga logo
                Image.asset(
                  "lib/images/laligalogo1.png",
                  height: 30,
                ),

                SizedBox(
                  height: 20,
                ),

                // Matches and Time
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // First team
                    Image.asset(
                      "lib/images/barcatransparent.png",
                      height: 50,
                    ),

                    SizedBox(
                      width: 30,
                    ),

                    // Time
                    Text(
                      "21:30 pm",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),

                    SizedBox(
                      width: 30,
                    ),

                    // Second Team
                    Image.asset(
                      "lib/images/Getafelogo.png",
                      height: 50,
                    ),

                    // right icon arrow
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                // Team Name and Stadium
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Barcelona
                    Text(
                      "FC Barcelona",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),

                    Text(
                      "V",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    // Getafe
                    Text(
                      "Getafe",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                // Stadium
                Text("Estadi Olimpic Lluiz Companyz"),

                SizedBox(
                  height: 5,
                ),
                // Divider
                Divider(),

                // Tickets and Matchday tour btn
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Tickets
                    Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFEDBB00),
                      ),
                      child: Center(
                          child: Text(
                        "TICKETS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    // Match Day tour
                    Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFEDBB00),
                      ),
                      child: Center(
                          child: Text(
                        "MATCH DAY TOUR",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                    ),
                  ],
                )
              ],
            ),
          )

          // Lower part
        ],
      ),
    ); //End of container 2
  }
}
