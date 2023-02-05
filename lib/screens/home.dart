import 'package:flutter/material.dart';
import 'package:grocery_app/components/exports.dart';
import '../models/grecory.dart';
import '../styles/export_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, this.gro}) : super(key: key);

  final Grocery? gro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: CustomNavButtom(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Jamaal!",
                          style: headerStyle,
                        ),
                        const SizedBox(height: 4),
                        Text("what would you buy ?", style: subHeaderStyle),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("images/user.jpg"),
                      radius: 20,
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                // ++++++Wxux Iga diiday Row why+++++++
                CustomSearchBar(),
                // Inuu ku ekyhy

                const SizedBox(height: 25),
                HomeCard(),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(" Popular Item", style: homeCegoStyle),
                    Text("view more", style: homeCegoStyleView),
                  ],
                ),
                const SizedBox(height: 25),

                Container(
                  height: 234,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.68,
                        crossAxisSpacing: 9,
                        mainAxisSpacing: 9,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: getGroceryList.length,
                      itemBuilder: (_, int index) {
                        return Category(
                          gro: getGroceryList[index],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
