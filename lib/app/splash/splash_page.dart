import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  ReactionDisposer disposer;

  @override
  void initState() {
    super.initState();
    disposer = autorun((_) {
      Future.delayed(const Duration(seconds: 3), () {
        Modular.to.pushReplacementNamed('/home');
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    disposer();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 191, 46, 1),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              height: 180,
              child: FlareActor(
                'assets/Beer_Cheers.flr',
                animation: "beer",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 35),
            child: Text(
              'Breja',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Breja",
                  fontSize: 90,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ],
      )),
    );
  }
}
