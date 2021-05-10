import 'package:cse_2a9/data/authentication/google_signin_auth.dart';
import 'package:cse_2a9/data/dataprovider/theme_data.dart';
import 'package:cse_2a9/presentation/widgets/spacing.dart';
// ignore: unused_import
import 'package:cse_2a9/presentation/widgets/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: GreadientColors.skylake,
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            largeVerticalSpace(),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: GreadientColors.skylake,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter),
                  shape: BoxShape.circle,
                  color: Colors.blue[300]),
              child: Image.asset('assets/vector.png'),
            ),
            mediumVerticalSpace(),
            Text(
              "Welcome to CSE-2A9 ",
              style: textstyle(),
            ),
            Text(
              'happy to see you :)',
              style: textstyle(),
            ),
            mediumVerticalSpace(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                ' All about App hgsdkjgfuf djhfdsuf sgiu All about App hgsdkjgfuf  ',
                style: normaltextstyle(),
              ),
            ),
            largeVerticalSpace(),
            GestureDetector(
              onTap: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.login();
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.fromLTRB(50, 0, 30, 0),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(19)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'get started',
                      style: descriptiontextstyle(),
                    ),
                    largeHorizontallSpace(),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.purple),
                      child: Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            mediumVerticalSpace(),
          ],
        ),
      ),
    );
  }
}
