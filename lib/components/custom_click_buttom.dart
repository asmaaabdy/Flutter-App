import 'package:flutter/material.dart';

class CustomClickButtom extends StatelessWidget {
  CustomClickButtom({required this.btnName, this.btnClick});
  final String btnName;

  final Function? btnClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => btnClick!(),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20),
        width: 217,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(0xff2A9D8F),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$btnName",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            //const SizedBox(width: 2),
            // Expanded(
            //   child: Icon(
            //     btnIconName,
            //     color: Colors.white,
            //     size: 30,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
