import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Nu Bank - Clone cartão'),
          backgroundColor: Color.fromRGBO(153, 51, 153, .5),
        ),
        backgroundColor: Color.fromRGBO(153, 51, 153, .5),
        body: FlipCard(
            key: cardKey,
            flipOnTouch: true,
            direction: FlipDirection.HORIZONTAL,
            front: Stack(
              children: <Widget>[
                Center(child: card()),
                topRight('assets/mastercard.png'),
                midLeft('assets/chip.png', 40),
                midLeftColor(247, 90, 'assets/nfc.png', 20, Colors.white),
                midLeftColor(150, 30, 'assets/nu_logo.png', 90, Colors.white),
                Positioned(
                    bottom: 180,
                    left: 120,
                    child: Text(
                      'Nícolas G Almeida',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ],
            ),
            back: Stack(children: <Widget>[
              Center(child: card()),
              Positioned(
                  top: 170,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 340,
                    height: 60,
                    color: Colors.white,
                  )),
              Positioned(
                  bottom: 180,
                  left: 40,
                  child: Text(
                    '9999 9999 9999 9999',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
              Positioned(
                  bottom: 165,
                  right: 20,
                  child: Image.asset(
                    'assets/cirrus.png',
                    width: 60,
                  )),
            ])));
  }
}

Widget card() {
  return Container(
    margin: EdgeInsets.all(10),
    height: 300,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(109, 33, 119, 1)),
  );
}

//posiçao imagens frente
Widget topRight(String topImage) {
  return Positioned(
      top: 170,
      right: 10,
      child: Image.asset(
        topImage,
        width: 80,
      ));
}

Widget midLeft(String midImage, double imgWidth) {
  return Positioned(
      bottom: 240, left: 40, child: Image.asset(midImage, width: 40));
}

Widget midLeftColor(double posBottom, double posleft, String midImage,
    double imgWidth, Color imgColor) {
  return Positioned(
      bottom: posBottom,
      left: posleft,
      child: Image.asset(
        midImage,
        width: imgWidth,
        color: imgColor,
      ));
}
