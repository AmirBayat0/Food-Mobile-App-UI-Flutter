import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "User Profile",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            Icon(
              LineIcons.user,
              size: 50,
              color: Colors.deepPurpleAccent,
            )
          ],
        )),
      ),
      
    );
  }
}