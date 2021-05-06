import 'package:cse_2a9/presentation/widgets/spacing.dart';
import 'package:cse_2a9/presentation/widgets/textstyle.dart';
import 'package:flutter/material.dart';

class Cardview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 15),
        shadowColor: Colors.blue[400],
        color: Colors.blue,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Text(
                        'Todays Online Classes',
                        style: cardnormaltextstyle(),
                      ),
                      smallVerticalSpace(),
                      Text(
                        '7 classes 7 Hours',
                        style: cardmediumdescriptiontextstyle(),
                      ),
                    ],
                  ),
                ),
                xlargeHorizontallSpace(),
                Image.asset(
                  'assets/boycode.png',
                  height: 120,
                  width: 120,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
