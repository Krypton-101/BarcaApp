import 'package:barca_app/components/appbar_comp.dart';
import 'package:barca_app/components/barca_store.dart';
import 'package:barca_app/components/barca_stories.dart';
import 'package:barca_app/components/barca_tickets.dart';
import 'package:barca_app/components/for_culers.dart';
import 'package:barca_app/components/highlight_cards.dart';
import 'package:barca_app/components/match_calendar_container.dart';
import 'package:barca_app/components/news_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /**
   * Icon sizes 30
   * font sizes
   * normal font 16
   * headings 25
   * 
   */

  void something() {}

  int activeIndex = 0;

  final List<String> carouselImages = [
    'lib/images/barca_fans1.jpg',
    'lib/images/barca_flag.jpeg',
    'lib/images/barca_gold.jpeg',
    'lib/images/barca_neon.jpeg',
    'lib/images/campnou.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF004D98),
      body: SafeArea(
        child: Column(
          children: [
            // App bar
            AppbarComp(),

            // Main Body AppBar Components
            Expanded(
              child: ListView(
                children: [
                  Stack(children: [
                    // News
                    NewsImage(),

                    //  Highlight blocks
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 430, horizontal: 10),
                      child: Column(
                        children: [
                          HighlightCards(
                            image: "lib/images/barcagold.jpeg",
                            title: "Top two goal scores",
                            time: "6 mins ago",
                          ),

                          /**
                           * Every highlight card must have its own image and Title
                           */
                          // Highlight 2
                          HighlightCards(
                            image: "lib/images/msndrawn.jpeg",
                            title: "Big 3(MSN)",
                            time: "3 hrs ago",
                          ),

                          // Highlight 3
                          HighlightCards(
                            image: "lib/images/youngmessi.jpeg",
                            title: "G.O.A.T",
                            time: "ALL TIME",
                          ),

                          SizedBox(
                            height: 25,
                          ),
                          // Main Patners
                          Text(
                            "MAIN PATNERS",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),

                          SizedBox(
                            height: 25,
                          ),

                          // Main Patners
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Nike
                              // Logo
                              Image.asset(
                                "lib/images/nike.png",
                                height: 60,
                              ),

                              // Spotify
                              // Logo
                              Image.asset(
                                "lib/images/spotfy.png",
                                height: 50,
                              ),

                              // Ambilight
                              // Logo
                              Image.asset(
                                "lib/images/barcatransparent.png",
                                height: 50,
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 30,
                          ),

                          Stack(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 2500,
                                  // width: 6000,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                              // Inside(top) stack
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Center(
                                    child: Text(
                                  "BARCA STORIES",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ),

                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 80, horizontal: 25),
                                height: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    BarcaStories(
                                      image: "lib/images/messironaldinho.jpeg",
                                      story: "History in the making",
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    BarcaStories(
                                      image: "lib/images/messishirtup.jpeg",
                                      story: "Who's the BOSS?",
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    BarcaStories(
                                      image: "lib/images/barcafans1.jpg",
                                      story: "Appreciation Post!",
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    BarcaStories(
                                      image: "lib/images/terstegen.jpeg",
                                      story: "The Great wall of \nChina",
                                    ),
                                  ]
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 420.0),
                                child: Divider(
                                  color: Colors.black,
                                ),
                              ),

                              // BARCA FIRST TEAM MATCHES
                              Container(
                                margin: EdgeInsets.only(top: 450),
                                child: Column(
                                  children: [
                                    // Title
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "BARCA FIRST TEAM",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          " MATCHES",
                                          style: TextStyle(fontSize: 20),
                                        )
                                      ],
                                    ),

                                    // CountDown
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // Match countdown
                                        Text("Match Countdown"),

                                        // Countdown yenywe
                                        Text(
                                          " CountDown Yenyewe",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),

                                    SizedBox(
                                      height: 30,
                                    ),

                                    // Matches calendar
                                    // Should In ListView

                                    // ListView(
                                    //   scrollDirection: Axis.horizontal,
                                    //   children: [
                                    //   ],
                                    // ),

                                    Container(
                                      height: 350,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          // Container 1
                                          Container(
                                            padding: EdgeInsets.all(0),
                                            width: 350,
                                            // height: 50,
                                            color: Color(0xFFA50044),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "View all",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 35),
                                                ),
                                                Text(
                                                  "Results",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 35),
                                                ),
                                              ],
                                            ),
                                          ),

                                          SizedBox(
                                            width: 10,
                                          ),

                                          // Container 2
                                          MatchCalendarContainer(),

                                          SizedBox(
                                            width: 10,
                                          ),

                                          // Container 3
                                          MatchCalendarContainer(),

                                          SizedBox(
                                            width: 10,
                                          ),

                                          // Container 4
                                          MatchCalendarContainer(),

                                          SizedBox(
                                            width: 10,
                                          ),

                                          // Container 5
                                          MatchCalendarContainer(),

                                          SizedBox(
                                            width: 10,
                                          ),

                                          // Last Container
                                          Container(
                                            padding: EdgeInsets.all(0),
                                            width: 300,
                                            // height: 300,
                                            color: Color(0xFFA50044),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "View all",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 35),
                                                ),
                                                Text(
                                                  "Fixtures",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 35),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ), //End of fixture scroll list view
                                    ), // End of Fixture Callender

                                    SizedBox(
                                      height: 30,
                                    ),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.list_alt_sharp,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Synch Schedule to calendar",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ],
                                    ),

                                    SizedBox(
                                      height: 20,
                                    ),

                                    Divider(),

                                    SizedBox(
                                      height: 20,
                                    ),

                                    Text(
                                      "BARCA TICKETS",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),

                                    SizedBox(
                                      height: 20,
                                    ),

                                    // B A R C A T I C K E T S
                                    // Barca tickets
                                    Container(
                                      height: 300,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          // Ticket 1
                                          BarcaTickets(),

                                          SizedBox(
                                            width: 10,
                                          ),

                                          // Ticket 2
                                          BarcaTickets(),

                                          SizedBox(
                                            width: 10,
                                          ),
                                          // Ticket 3
                                          BarcaTickets(),

                                          SizedBox(
                                            width: 10,
                                          ),
                                          // Ticket 4
                                          BarcaTickets(),
                                        ],
                                      ),
                                    ),

                                    SizedBox(
                                      height: 40,
                                    ),

                                    Divider(),

                                    SizedBox(
                                      height: 40,
                                    ),

                                    // Barca store spotify
                                    Text(
                                      "BARCA STORE SPOTIFY CAMP NOU",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),

                                    SizedBox(
                                      height: 10,
                                    ),

                                    // Barca Store cards
                                    // Card

                                    Container(
                                      height: 316,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          // Ticket 1
                                          BarcaStore(),

                                          SizedBox(
                                            width: 10,
                                          ),

                                          // Ticket 2
                                          BarcaStore(),

                                          SizedBox(
                                            width: 10,
                                          ),
                                          // Ticket 3
                                          BarcaStore(),

                                          SizedBox(
                                            width: 10,
                                          ),
                                          // Ticket 4
                                          BarcaStore(),
                                        ],
                                      ),
                                    ),

                                    SizedBox(
                                      height: 20,
                                    ),

                                    // Divider
                                    Divider(),

                                    SizedBox(
                                      height: 10,
                                    ),

                                    // Only for culures
                                    Text(
                                      "Only for Culures",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    SizedBox(
                                      height: 10,
                                    ),

                                    Container(
                                      height: 300,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          // Ticket 1
                                          ForCulers(
                                            image:
                                                'lib/images/campnoupurple.jpeg',
                                            title: "Live \nWorks",
                                          ),

                                          SizedBox(
                                            width: 10,
                                          ),

                                          // Ticket 2
                                          ForCulers(
                                            image:
                                                "lib/images/campnouenight.jpeg",
                                            title: "Night \nshow",
                                          ),

                                          SizedBox(
                                            width: 10,
                                          ),
                                          // Ticket 3
                                          ForCulers(
                                            image: "lib/images/campnoured.jpeg",
                                            title: "Camp \nNou",
                                          ),

                                          SizedBox(
                                            width: 10,
                                          ),
                                          // Ticket 4
                                          ForCulers(
                                            image: "lib/images/campnou.jpg",
                                            title:
                                                "Ticket \nSales\nOpen \nSoon",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ], // stack column ends here
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ), // This is the main last column
    );
  }
}
