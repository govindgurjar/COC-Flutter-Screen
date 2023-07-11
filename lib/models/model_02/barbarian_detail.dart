import 'package:flutter/material.dart';
import 'package:flutter_ui_july05/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class BarbarianDetailPage extends StatelessWidget {
  const BarbarianDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Barbarian's Details"),
        // ),
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 411,
                  width: 420,
                  decoration: BoxDecoration(
                      color: MyColors.barbarian,
                      borderRadius: BorderRadius.circular(22)),
                ),
                Positioned(
                  right: 110,
                  bottom: -40,
                  child: Hero(
                    tag: 'barbarian',
                    child: Image.asset(
                      'images/barbarian2.png',
                      height: 473,
                      width: 411,
                    ),
                  ),
                ),
                Positioned(
                  left: 220,
                  top: 435,
                  child: Text('Barbarian',
                      style: GoogleFonts.chelaOne(
                        fontSize: 34,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Column(children: [
                  Text('Level 1'),
                  Text('DPS'),
                  Text('Elixir'),
                  Text('Health')
                ]),
                Column(children: [Text('Melle')]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
