import 'package:flutter/material.dart';

class HighlightCards extends StatelessWidget {

  final String image;
  final String title;
  final String time;

  const HighlightCards({
    super.key,
    required this.image,
    required this.title,
    required this.time
    });

  @override
  Widget build(BuildContext ) {
    return Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 500,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 8, 2, 87),
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  colors: [
                                    Colors.black.withOpacity(.6),
                                    Colors.black.withOpacity(.3)
                                  ],
                                ),
                              ),
                              child: Row(
                                children: [
                                  // image
                                  Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  // Highlight and time
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Title
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 20.0,
                                          left: 20
                                        ),
                                        child: Text(
                                          title,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),

                                      SizedBox(
                                        height: 30,
                                      ),

                                      // First Team
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            // First Team
                                            Container(
                                              color: Color.fromARGB(
                                                  255, 255, 200, 0),
                                              height: 10,
                                              width: 10,
                                            ),

                                            SizedBox(
                                              width: 5,
                                            ),

                                            Text(
                                              "FIRST TEAM",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 200, 0),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),

                                            SizedBox(
                                              width: 5,
                                            ),

                                            Icon(
                                              Icons.timer_outlined,
                                              color: Colors.black,
                                              size: 15,
                                              weight: 30,
                                            ),

                                            Text(
                                              time,
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),

                                            // Time
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
  }
}