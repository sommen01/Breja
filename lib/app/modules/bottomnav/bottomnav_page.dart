import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'bottomnav_controller.dart';

class BottomnavPage extends StatefulWidget {
  final String title;
  const BottomnavPage({Key key, this.title = "Bottomnav"}) : super(key: key);

  @override
  _BottomnavPageState createState() => _BottomnavPageState();
}

class _BottomnavPageState
    extends ModularState<BottomnavPage, BottomnavController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
