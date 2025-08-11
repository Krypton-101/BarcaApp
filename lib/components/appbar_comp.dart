// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AppbarComp extends StatelessWidget {
  const AppbarComp({super.key});

  @override
  Widget build(BuildContext context) {
    return //  AppBar Container
        Container(
      child: Column(
        children: [
          // U P P E R P A R T O F T H E A P P B A R
          // Get your ticket and login container
          Container(
            width: 500,
            height: 170,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 8, 2, 87),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    Colors.black.withOpacity(.6),
                    Colors.black.withOpacity(.3)
                  ],
                ),
              ),
              // This is where the column goes
              child: Column(
                children: [
                  // U P P E R P A R T
                  // Get your ticket
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20),
                    child: Container(
                      width: 380,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 6, 100, 177),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25)),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              bottomLeft: Radius.circular(25)),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            colors: [
                              Colors.black.withOpacity(.1),
                              Color.fromARGB(255, 40, 3, 71).withOpacity(.9)
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            // The Champion

                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 25.0, top: 8),
                                child: Text(
                                  "⚽ The Champions League continues at home!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  "GET YOUR TICKET",
                                  style: TextStyle(
                                    color: Color(0xFFEDBB00),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  // L O W E R P A R T
                  // Barca and login part
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Barca
                          // Icon(
                          //   Icons.sports_soccer_sharp,
                          //   color: Colors.yellow,
                          //   size: 60,
                          // ),

                          // This image should show 
                          // Logo
                          Image.asset(
                            "lib/images/barcatransparent.png",
                            height: 60,
                          ),

                          // Login and Drawer
                          Row(
                            children: [
                              // Login
                              Container(
                                height: 50,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDB0030),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.person_2_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //  Drawer

                              SizedBox(
                                width: 10,
                              ),

                              //Drawer
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // List to click part with icons container
          Container(
            width: 500,
            height: 60,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 2, 32),
              border: Border.symmetric(
                horizontal: BorderSide(color: Color.fromARGB(78, 255, 235, 59)),
              ),
            ),

            // Icon Buttons here
            child: Row(
              children: [
                // Barca one
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Row(
                      children: [
                        // Icon
                        Icon(
                          Icons.live_tv_rounded,
                          color: Color(0xFFFFED02),
                          size: 25,
                        ),

                        SizedBox(
                          width: 10,
                        ),

                        // Text
                        Text(
                          "BARCA ONE",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFFED02),
                              fontWeight: FontWeight.bold),
                        ),

                        SizedBox(
                          width: 5,
                        ),

                        // Last icon
                        Icon(
                          Icons.speed,
                          color: Color(0xFFFFED02),
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ),

                // Shop

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        // Icon
                        Icon(
                          Icons.shopify_outlined,
                          color: Color(0xFFFFED02),
                          size: 25,
                        ),

                        SizedBox(
                          width: 10,
                        ),

                        // Text
                        Text(
                          "SHOP",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFFED02),
                              fontWeight: FontWeight.bold),
                        ),

                        SizedBox(
                          width: 5,
                        ),

                        // Last icon
                        Icon(
                          Icons.speed,
                          color: Color(0xFFFFED02),
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ),

                // Tickets and museum
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        // Icon
                        Icon(
                          Icons.airplane_ticket_rounded,
                          color: Color(0xFFFFED02),
                          size: 25,
                        ),

                        SizedBox(
                          width: 10,
                        ),

                        // Text
                        Text(
                          "TIKETS",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFFED02),
                              fontWeight: FontWeight.bold),
                        ),

                        SizedBox(
                          width: 5,
                        ),

                        // Last icon
                        Icon(
                          Icons.speed,
                          color: Colors.yellow,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
