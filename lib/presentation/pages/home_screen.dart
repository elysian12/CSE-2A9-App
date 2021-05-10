import 'package:cse_2a9/data/authentication/google_signin_auth.dart';
import 'package:cse_2a9/presentation/screens/homepage.dart';
import 'package:cse_2a9/presentation/screens/landingpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            final provider = Provider.of<GoogleSignInProvider>(context);

            if (provider.isSigningIn) {
              return buildLoading();
            } else if (snapshot.hasData) {
              return HomePage();
            } else {
              return LandingPage();
            }
          },
        ),
      ),
    );
  }

  Widget buildLoading() => Center(child: CircularProgressIndicator());
}
