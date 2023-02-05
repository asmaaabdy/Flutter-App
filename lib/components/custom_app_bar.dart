import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData? leftIcon;
  final IconData? rightIcon;
  final Function leftFunction;
  final Function rightFunction;

  CustomAppBar(
      {this.leftIcon,
      this.rightIcon,
      required this.leftFunction,
      required this.rightFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => leftFunction(),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                leftIcon,
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => rightFunction(),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                rightIcon,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
