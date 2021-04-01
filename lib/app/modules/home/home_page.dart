import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Breja'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/cerveja.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 3.0, sigmaY: 4.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          ),
        ),
      ),
    );
  }
}
