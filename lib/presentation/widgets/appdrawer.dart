import 'package:cse_2a9/data/authentication/google_signin_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 12),
          children: [
            const SizedBox(
              height: 48,
            ),
            buildHeader(
                context: context,
                email: user.email,
                name: user.displayName,
                onclicked: () {},
                urlImage: user.photoURL),
            const SizedBox(
              height: 30,
            ),
            buildMenu(
                text: 'Online Classes', icon: Icons.class_, onclicked: () {}),
            const SizedBox(
              height: 16,
            ),
            buildMenu(
                text: 'About', icon: Icons.album_outlined, onclicked: () {}),
            const SizedBox(
              height: 16,
            ),
            buildMenu(
                text: 'Logout',
                icon: Icons.logout,
                onclicked: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.logout();
                }),
            const SizedBox(
              height: 16,
            ),
            Divider(
              color: Colors.white70,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenu({
    String text,
    IconData icon,
    VoidCallback onclicked,
  }) {
    final color = Colors.blue;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      onTap: onclicked,
    );
  }

  Widget buildHeader({
    BuildContext context,
    String urlImage,
    String name,
    String email,
    VoidCallback onclicked,
  }) =>
      InkWell(
        child: Container(
            child: Column(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(urlImage),
            ),
            SizedBox(height: 18),
            Text(
              name,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              email,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // ignore: deprecated_member_use
            OutlineButton(
              borderSide: BorderSide(color: Colors.blue),
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Text('Logout'),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
            )
          ],
        )),
      );
}
