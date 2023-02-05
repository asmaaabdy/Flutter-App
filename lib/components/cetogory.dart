import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/screens/exports.dart';

import '../models/grecory.dart';
import '../styles/export_style.dart';

class Category extends StatefulWidget {
  const Category({Key? key, required this.gro}) : super(key: key);

  final Grocery gro;

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int _addCart = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        decoration: BoxDecoration(
            color: Color(0xffF8F8F8),
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200]!,
                blurRadius: 15,
                spreadRadius: 1,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                color: Colors.grey[300]!,
                blurRadius: 15,
                spreadRadius: 1,
                offset: Offset(-4, -4),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(gro: widget.gro),
                  ),
                );
              },
              child: Container(
                width: 160,
                height: 124,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Hero(
                    tag: "${widget.gro.gImage}",
                    child: Image.asset("${widget.gro.gImage}"),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("${widget.gro.gName}", style: homeCegoStyleBanana),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("${widget.gro.gType}", style: homeCegoStyleOrganic),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$${widget.gro.gValue}", style: homeCegoStyleMenoy),
                  Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xffEEEEEE),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: IconButton(
                        onPressed: () {
                          _addCart++;
                        },
                        icon: Icon(Icons.add),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
