import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselExample extends StatefulWidget {
  CarouselExample({super.key});

  @override
  State<CarouselExample> createState() => _CarouselExampleState();
}

class _CarouselExampleState extends State<CarouselExample> {
  int activeIndex = 0;

  List<String> carouselImages = [
    "String 1",
    "String 2",
    "String 3",
    "String 4",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 300),
            // Carousel slider
            child: CarouselSlider.builder(
              itemCount: carouselImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImages = carouselImages[index];
                return buildImage(urlImages, index);
              },
              options: CarouselOptions(
                height: 300,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
                enlargeCenterPage: true,
                autoPlay: true,
              ),
            ),
          ),
      
          SizedBox(
              height: 12,
            ),
      
            buildIndicator(),
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        effect: ExpandingDotsEffect(
          dotWidth: 15,
          activeDotColor: Color(0xFF004D98),
        ),
        activeIndex: activeIndex,
        count: carouselImages.length,
      );
}

Widget buildImage(String urlImages, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        urlImages,
        // fit: BoxFit.cover,
      ),
    );
