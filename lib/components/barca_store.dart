import 'package:flutter/material.dart';

class BarcaStore extends StatelessWidget {
  const BarcaStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 350,
                                        height: 300,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(
                                                  0.8), // Grey shadow with opacity
                                              spreadRadius:
                                                  2, // Spread of the shadow
                                              blurRadius:
                                                  5, // Blurred shadow effect
                                              offset: Offset(0,
                                                  0), // Left-leaning shadow (negative x offset, positive y for a subtle bottom shift)
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 150,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'lib/images/youngmessi.jpeg'),
                                                    fit: BoxFit.cover),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                ),
                                              ),
                                            ),

                                            // SizedBox(
                                            //   height: 5,
                                            // ),

                                            Row(
                                              children: [
                                                // image
                                                Container(
                                                  width: 100,
                                                  height: 150,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage('lib/images/terstegen2.jpeg'),
                                                      fit: BoxFit.cover,
                                                      ),
                                                      borderRadius: BorderRadius.only(
                                                        bottomLeft: Radius.circular(20),
                                                      )
                                                  ),
                                                ),

                                                // Product
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 20.0),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      // Title
                                                      Text("Kits",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 25,
                                                  
                                                      ),),
                                                  
                                                      SizedBox(
                                                        height:20, 
                                                      ),
                                                  
                                                      // Description
                                                      Text("Get your favourite kit for 24/25 \nseason here"),
                                                  
                                                      // Shop now
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "Shop Now",
                                                            style: TextStyle(
                                                              color: Colors.blue,
                                                              fontWeight: FontWeight.bold,
                                                              fontSize: 15,
                                                              fontStyle: FontStyle.italic,
                                                            ),
                                                          ),
                                                          SizedBox(width: 5,),
                                                      Icon(Icons.speed,
                                                      color: Colors.blue,
                                                      size:15
                                                      )
                                                        ],
                                                      ),
                                                  
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
  }
}