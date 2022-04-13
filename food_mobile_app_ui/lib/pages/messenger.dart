import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MessengerPage extends StatelessWidget {
  const MessengerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Messenger",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Icon(
              LineIcons.facebookMessenger,
              size: 50,
              color: Colors.red,
            )
          ],
        )),
      ),
    );
  }
}
