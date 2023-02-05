import 'package:flutter/material.dart';

import '../styles/export_style.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 368,
      height: 200,
      decoration: BoxDecoration(
          color: Color(0xffEBFBED),
          //Color(0xffEBFBED)
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(3, 3),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(-3, -3),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Enjoy the special\noffer up to 30%",
                    style: cardHeaderStyle),
                const SizedBox(height: 6),
                Text(
                    "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.\nFeugiat facilisi augue\n faucibus nunc."),
                const SizedBox(height: 8),
                Text("at 12 - 20 July 2022", style: cardSubTextStyle),
              ],
            ),
          ),
          Expanded(
            child: Image.asset("images/card.png"),
          ),
        ],
      ),
    );
  }
}
