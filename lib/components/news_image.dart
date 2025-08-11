import 'package:flutter/material.dart';

class NewsImage extends StatelessWidget {
  const NewsImage({super.key});

  @override
  Widget build(BuildContext context) {
    /**
     * I used stack to put together the gradient, image and text
     * As a stack of eachother
     */
    return  Stack(
              children: [
                // Image container
                Container(
                  height: 450,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/images/terstegen4.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFFDB0030).withOpacity(0.6), // Dark gradient
                            Color(0xFFEDBB00).withOpacity(0.01),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                  ),
                ),

                // Word Part in the news
                Padding(
                  padding: const EdgeInsets.only(top: 290.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Sponsor, divider and logo
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Sponsor
                          Text(
                            "BROUGHT TO YOU BY",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),

                          SizedBox(
                            width: 20,
                          ),

                          // Divider
                          Container(
                            height: 20,
                            width: 2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),

                          SizedBox(
                            width: 20,
                          ),

                          // Logo
                          Image.asset(
                            "lib/images/barcamore.jpeg",
                            height: 20,
                          )
                        ],
                      ),

                      // News
                      Text(
                        "MARC TER STEGEN INJURY",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),

                      Text(
                        "NEWS",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),

                      // First Team
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // First Team
                          Container(
                            color: Color.fromARGB(255, 255, 200, 0),
                            height: 10,
                            width: 10,
                          ),

                          SizedBox(
                            width: 5,
                          ),

                          Text(
                            "FIRST TEAM",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 200, 0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(
                            width: 15,
                          ),

                          Icon(
                            Icons.timer_outlined,
                            color: Colors.white,
                            size: 15,
                          ),

                          SizedBox(
                            width: 5,
                          ),

                          Text(
                            "6 mins ago",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),

                          // Time
                        ],
                      )
                    ],
                  ),
                ),

                // Gradient Container

                //   Center(
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Text(
                //         'MARC TER STEGEN INJURY news',
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 30,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),

                //       SizedBox(height: 20),

                //       Text(
                //         'Creating beautiful UIs is easy!',
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 20,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    width: 15,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Color(0xFFDB0030),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 120),
                    width: 15,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFF004D98),
                    ),
                  ),
                ),
              ],
            );
  }
}