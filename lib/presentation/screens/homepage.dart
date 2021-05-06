import 'package:cse_2a9/presentation/widgets/appdrawer.dart';
import 'package:cse_2a9/presentation/widgets/categorie_widget.dart';
import 'package:cse_2a9/presentation/widgets/spacing.dart';
import 'package:cse_2a9/presentation/widgets/textstyle.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.blue,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          smallVerticalSpace(),
          Text(
            'Hey Aman,',
            style: mediumtextstyle(),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(70, 10, 40, 0),
            child: Text(
              'Which skills you looking to acquire today ?',
              style: mediumdescriptiontextstyle(),
            ),
          ),
          mediumVerticalSpace(),
          CategoriesTile(),
        ],
      ),
    );
  }
}
