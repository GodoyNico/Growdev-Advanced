import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:layout_cartao_nubank/atras_cartao.dart';
import 'package:layout_cartao_nubank/frente_cartao.dart';

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cartão Nubank"),
        actions: [
          Icon(Icons.credit_card),
        ],
        backgroundColor: Color.fromRGBO(97, 47, 116, 1),
      ),
      backgroundColor: Color.fromRGBO(60, 25, 79, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: FlipCard(
            direction: FlipDirection.HORIZONTAL,
            front: frente_cartao(),
            back: atras_cartao(),
          ),
        ),
      ),
    );
  }
}
