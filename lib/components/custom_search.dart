import 'package:flutter/material.dart';

import '../styles/export_style.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 294,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Color(0xffFAFAFA),
            //Color(0xffFAFAFA)
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(3, 3),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Colors.grey.shade100,
                offset: Offset(-2, -2),
                blurRadius: 15,
                spreadRadius: 1,
              ),
            ],
          ),
          child: TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search_sharp, size: 30),
              hintText: "Search what you want ?",
              hintStyle: hintStyle,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            width: 36,
            height: 50,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xff2A9D8F),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.filter_list,
              size: 35,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
