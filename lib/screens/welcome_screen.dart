import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_click_buttom.dart';
import 'package:grocery_app/screens/exports.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff2A9D8F),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.8, 1),
            colors: <Color>[
              // Color(0xff1f005c),
              // Color(0xff5b0060),

              Color(0xff2a9d8f),
              Color(0xffb9fbc0),
              //e16b5c
              // Color(0xfff39060),
              //Color(0xffffb56b),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          children: <Widget>[
            //SizedBox(height: 40),
            Spacer(),
            Image(
              image: AssetImage("images/bg.png"),
              fit: BoxFit.fill,
              // height: 300,
              // width: 692,
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45,
                    vertical: 45,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: "All Your \n",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                          children: [
                            TextSpan(
                              text: "Kichen needs, \n",
                              style: TextStyle(
                                color: Color(0xff2A9D8F),
                                fontSize: 28,
                              ),
                            ),
                            TextSpan(
                              text: "are here",
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Feugiat facilisi augue faucibus nunc. Pulvinar mollis id pretium accumsan pharetra.',
                      ),
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => HomeScreen())),
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
                            children: [
                              Text(
                                "Get Start Now",
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
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
