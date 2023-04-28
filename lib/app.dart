// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:youtube_clone/Screen/SuperHomepage.dart';

import 'Screen/HomePage.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: SuperHomePage());
  }
}
