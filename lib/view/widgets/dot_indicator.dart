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
                  duration: const Duration(milliseconds: 500),
                  width: currentPage == index ? 20 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                      color: currentPage == index
                          ? const Color(0xFFeb0c0c)
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                ))
      ],
    );
  }
}
