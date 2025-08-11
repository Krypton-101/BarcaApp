import 'package:flutter/material.dart';

class BarcaTickets extends StatelessWidget {
  const BarcaTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                                      width: 200,
                                      height: 300,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image:DecorationImage(image: AssetImage("lib/images/ticket.jpeg"),
                                        fit: BoxFit.cover),
                                        // color: Colors.black,
                                      ),
                                      child: Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                                              child: Text(
                                                "Futsal",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold
                                              ),
                                              ),
                                            ),
                                          ),

                                          
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(vertical:15.0),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                  Icons.arrow_forward_ios_rounded,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                              
                                                Icon(
                                                  Icons.arrow_forward_ios_rounded,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                                ]
                                              ),
                                            ),
                                          ),

                                        
                                        ],
                                      ),
                                    );
  }
}