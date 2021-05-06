import 'package:cse_2a9/data/dataprovider/categorie_data.dart';
import 'package:cse_2a9/presentation/screens/online_classes.dart';
import 'package:cse_2a9/presentation/widgets/spacing.dart';
import 'package:cse_2a9/presentation/widgets/textstyle.dart';
import 'package:flutter/material.dart';

class CategoriesTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: categories.map((categorie) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          OnlineclassPage(classKey: categorie.key)));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: categorie.gradientColor,
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.blue.withOpacity(0.4),
                      blurRadius: 8,
                      offset: Offset(4, 4),
                      spreadRadius: 2)
                ],
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categorie.title,
                              style: cardnormaltextstyle(),
                            ),
                            smallVerticalSpace(),
                            Text(
                              categorie.subtitle,
                              style: cardmediumdescriptiontextstyle(),
                            ),
                          ],
                        ),
                      ),
                      xlargeHorizontallSpace(),
                      Image.asset(
                        categorie.img,
                        height: 120,
                        width: 120,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
