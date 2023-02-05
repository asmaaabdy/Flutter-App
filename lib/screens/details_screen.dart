import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../components/exports.dart';
import '../models/grecory.dart';

class DetailsScreen extends StatefulWidget {
  final Grocery gro;

  const DetailsScreen({Key? key, required this.gro}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int counter = 0;
  void addCart() {
    Badge(
      badgeContent: Text("$counter++"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 154, 247, 163),
        //
        body: Column(
          children: [
            SizedBox(height: 30),
            CustomAppBar(
              leftIcon: Icons.arrow_back,
              rightIcon: Icons.add_shopping_cart_sharp,
              leftFunction: () => Navigator.pop(context),
              rightFunction: () {
                print("Yes Wad Kuso Darsan Kartaa");
              },
            ),
            Container(
              child: Image(
                image: AssetImage("${widget.gro.gImage ?? ""}"),
                fit: BoxFit.cover,
                height: 200,
                alignment: Alignment.center,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "${widget.gro.gName}",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    CustomRating(),
                    const SizedBox(height: 20),
                    Text(
                      "Description Item",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi, in lorem morbi pellentesque consectetur. Vestibulum, vel augue facilisis neque vel. Facilisi est auctor posuere sem. Lacinia feugiat at ridiculus vel vel in facilisis augue."
                      "Dictumst hendrerit urna tristique mi nisi, odio at sapien. Pulvinar tincidunt at proin lacus, pellentesque mauris quis. Vel facilisi id amet, vel, velit fermentum. Lobortis nisl, pretium eros fermentum, ornare erat mi. Sit non neque massa lacinia. Nec, varius facilisi congue ac. Suspendisse tincidunt pharetra sapien at odio sapien rutrum non. Quam condimentum et varius netus. Rhoncus tellus a nulla fames aenean dui quam egestas.",
                      style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomClickButtom(
                      btnName: "Add to cart",
                      btnClick: () {},
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
