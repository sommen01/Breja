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
        backgroundColor: Color.fromRGBO(246, 191, 46, 1),
        elevation: 0.0,
        title: Text(
          'Breja',
          style: TextStyle(fontFamily: "Breja", fontSize: 70),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/cerveja.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 3.0, sigmaY: 4.0),
              child: Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  child: SafeArea(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            color: Color.fromRGBO(246, 191, 46, 1),
                          ),
                          width: double.infinity,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 90, bottom: 20),
                          width: 299,
                          height: 279,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(234, 122, 40, 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(160),
                                  bottomLeft: Radius.circular(290),
                                  bottomRight: Radius.circular(160),
                                  topRight: Radius.circular(10))),
                        ),
                        CustomScrollView(
                          slivers: <Widget>[
                            SliverToBoxAdapter(
                              child: Padding(
                                padding: const EdgeInsets.all(26.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("O que vamos beber :)",
                                        style: TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w200,
                                            color: Colors.white)),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Material(
                                      elevation: 5.0,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                      child: TextField(
                                        controller: TextEditingController(
                                            text: 'Procurar...'),
                                        cursorColor:
                                            Theme.of(context).primaryColor,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(234, 122, 40, 1),
                                            fontSize: 18),
                                        decoration: InputDecoration(
                                            suffixIcon: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                IconButton(
                                                  icon:
                                                      Icon(Icons.photo_camera),
                                                  onPressed: () {},
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.search),
                                                  onPressed: () {},
                                                ),
                                              ],
                                            ),
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 25,
                                                    vertical: 13)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SliverPadding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.055,
                                  right: MediaQuery.of(context).size.width *
                                      0.055),
                              sliver: SliverGrid.count(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                children: <Widget>[
                                  cards(
                                      'https://static.paodeacucar.com/img/uploads/1/800/9928800.png',
                                      'Blue moon',
                                      '30', {
                                    "tpL": 5,
                                    "tpR": 32,
                                    "bttL": 32,
                                    "bttR": 7,
                                  }),
                                  cards(
                                      'https://static.paodeacucar.com/img/uploads/1/449/619449x200x200.png',
                                      'Lübeck',
                                      '30', {
                                    "tpL": 11,
                                    "tpR": 12,
                                    "bttL": 45,
                                    "bttR": 45,
                                  }),
                                  cards(
                                      'https://static.paodeacucar.com/img/uploads/1/879/656879x200x200.png',
                                      'Brooklyn',
                                      '30', {
                                    "tpL": 32,
                                    "tpR": 5,
                                    "bttL": 7,
                                    "bttR": 32,
                                  }),
                                  cards(
                                      'https://static.paodeacucar.com/img/uploads/1/502/619502x200x200.png',
                                      'Blondine',
                                      '30', {
                                    "tpL": 32,
                                    "tpR": 5,
                                    "bttL": 7,
                                    "bttR": 32,
                                  }),
                                  cards(
                                      'https://static.paodeacucar.com/img/uploads/1/83/586083x200x200.png',
                                      'Damiana',
                                      '30', {
                                    "tpL": 45,
                                    "tpR": 45,
                                    "bttL": 11,
                                    "bttR": 12,
                                  }),
                                  cards(
                                      'https://static.paodeacucar.com/img/uploads/1/614/657614x200x200.png',
                                      'Madalena',
                                      '30', {
                                    "tpL": 5,
                                    "tpR": 32,
                                    "bttL": 32,
                                    "bttR": 7,
                                  }),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget cards(
      String image, title, price, Map<dynamic, double> bolinhadDoVilas) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 23,
            bottom: 20,
            right: 30,
            child: Container(
              margin: EdgeInsets.only(left: 10, bottom: 0),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 179, 40, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(bolinhadDoVilas["tpL"]),
                      bottomLeft: Radius.circular(bolinhadDoVilas["bttL"]),
                      bottomRight: Radius.circular(bolinhadDoVilas["bttR"]),
                      topRight: Radius.circular(bolinhadDoVilas["tpR"]))),
              // decoration: BoxDecoration(
              //     color: Color.fromRGBO(243, 179, 40, 1),
              //     borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(160),
              //         bottomLeft: Radius.circular(290),
              //         bottomRight: Radius.circular(160),
              //         topRight: Radius.circular(240))),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(image, height: 120, fit: BoxFit.fitHeight),

                Text(title,
                    style: TextStyle(
                        fontFamily: "Breja",
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 27)),
                // Container(
                //     padding: EdgeInsets.all(5),
                //     margin: EdgeInsets.only(top: 4),
                //     color: Colors.deepOrange,
                //     child: Text("\$ " + price,
                //         style: TextStyle(
                //             color: Colors.white,
                //             fontWeight: FontWeight.bold,
                //             fontSize: 12))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
