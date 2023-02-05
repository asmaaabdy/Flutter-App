import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomNavButtom extends StatelessWidget {
  const CustomNavButtom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(18),
        topRight: Radius.circular(18),
      ),
      child: GNav(
        duration: Duration(milliseconds: 400),
        gap: 2,
        iconSize: 30,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        color: Colors.white,
        backgroundColor: Color(0xff2A9D8F),
        textStyle: TextStyle(fontSize: 20),
        //mainAxisAlignment: MainAxisAlignment.center,
        curve: Curves.easeInOut,
        style: GnavStyle.google,
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            text: "Home",
            //padding: EdgeInsets.all(12),
          ),
          GButton(
            onPressed: () {},
            leading: Badge(
              badgeContent: Text("8"),
              child: Icon(Icons.add_shopping_cart_outlined),
            ),
            icon: Icons.add_shopping_cart_outlined,
            text: "Shoping",
          ),
          GButton(
            icon: Icons.favorite_outline_outlined,
            text: "Favorite",
          ),
          GButton(
            icon: Icons.person_outline,
            text: "Profile",
          ),
        ],
      ),
    );
  }
}
