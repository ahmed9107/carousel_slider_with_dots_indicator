import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  final double currentPage;
  const DotsIndicator({Key? key, required this.currentPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            5,
            (index) => AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5),
                  duration: const Duration(milliseconds: 900),
                  width: currentPage == index ? 20 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                      color: currentPage == index ? Colors.blue : Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                ))
      ],
    );
  }
}
