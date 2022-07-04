import 'package:carousel_slider_with_dots_indicator/view/widgets/home/carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF272727),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            children: const [
              SizedBox(height: 10),
              CarouselSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
