import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  final int position;
  const CarouselItem({Key? key, required this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/${position + 1}.jpg'))),
    );
  }
}
