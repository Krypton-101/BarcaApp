import 'package:flutter/material.dart';

class BarcaStories extends StatelessWidget {
  final String image;
  final String story;

  const BarcaStories({
    super.key,
    required this.image,
    required this.story,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
                                      height: 30,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                image),
                                                fit: BoxFit.cover),
                                      ),
                                      child: Column(
                                        children: [
                                          // Card header
                                          Stack(
                                            children: [
                                              // Highlights
                                              Padding(
                                                padding: const EdgeInsets.only(top: 15.0, left: 10),
                                                child: Text(
                                                  "HIGHLIGHTS",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),

                                              // New
                                              Container(
                                                height: 25,
                                                width: 45,
                                                margin: EdgeInsets.only(top: 5),
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFEDBB00),
                                                  borderRadius: BorderRadius.circular(15)
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 5.0, top:2),
                                                  child: Text(
                                                    "NEW",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    ),
                                                    ),
                                                ),

                                              ),

                                            ],
                                          ),

                                          // Sub header za heading chini
                                          Container(
                                            margin: EdgeInsets.only(top: 160),
                                            child: Column(
                                              children: [
                                                Text(story,
                                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                                                SizedBox(height: 10,),
                                                Text("Barca",
                                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
  }
}