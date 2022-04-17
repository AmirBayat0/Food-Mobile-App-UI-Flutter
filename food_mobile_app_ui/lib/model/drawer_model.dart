import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class DrawerItemModel {
  IconData icon;
  String title;
  //
  DrawerItemModel({
    required this.icon,
    required this.title,
  });
}

List<DrawerItemModel> drawerItem = [
  DrawerItemModel(icon: LineIcons.user, title: "Profile"),
  DrawerItemModel(icon: LineIcons.wallet, title: "Wallet"),
  DrawerItemModel(icon: LineIcons.barChart, title: "Activity"),
  DrawerItemModel(icon: LineIcons.hamburger, title: "Foods"),
  DrawerItemModel(icon: LineIcons.info, title: "Reports"),
  DrawerItemModel(icon: LineIcons.lineChart, title: "Statistics"),
  DrawerItemModel(icon: LineIcons.alternateSignIn, title: "Sign Out"),
  DrawerItemModel(icon: LineIcons.shareSquareAlt, title: "Tell a Friend"),
  DrawerItemModel(icon: LineIcons.questionCircle, title: "Help And Feedback"),
  
  
];