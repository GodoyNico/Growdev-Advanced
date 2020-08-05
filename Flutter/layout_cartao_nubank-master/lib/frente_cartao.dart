import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class frente_cartao extends StatefulWidget {
  @override
  _frente_cartaoState createState() => _frente_cartaoState();
}

class _frente_cartaoState extends State<frente_cartao> {
  var inputController = TextEditingController();
  var input = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Seu nome",
              hintStyle: TextStyle(
                color: Colors.white60,
                fontSize: 18,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2.5,
                ),
              ),
              suffixIcon: Icon(
                Icons.text_rotation_none,
                color: Colors.white70,
              ),
              counterStyle: TextStyle(color: Colors.white70),
            ),
            style: TextStyle(color: Colors.white, fontSize: 20),
            keyboardType: TextInputType.name,
            textCapitalization: TextCapitalization.characters,
            controller: inputController,
            onChanged: (value) {
              setState(() {
                input = value.toUpperCase();
              });
            },
            onSubmitted: (value) {
              inputController.clear();
            },
            maxLength: 20,
          ),
          SizedBox(
            height: 15,
          ),
          AspectRatio(
            aspectRatio: 8.5 / 5.4,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(97, 47, 116, 1),
                border: Border.all(
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: Image(
                      image: AssetImage('images/chip.png'),
                      width: 50,
                    ),
                    left: 25,
                    top: 60,
                  ),
                  Positioned(
                    child: Image(
                      image: AssetImage('images/nfc.png'),
                      width: 20,
                      color: Colors.white,
                    ),
                    left: 80,
                    top: 72,
                  ),
                  Positioned(
                    child: Image(
                      image: AssetImage('images/mastercard.png'),
                      width: 80,
                    ),
                    right: 10,
                    top: 10,
                  ),
                  Positioned(
                    child: Image(
                      image: AssetImage('images/nu_logo.png'),
                      width: 100,
                      color: Colors.white,
                    ),
                    left: 10,
                    bottom: 0,
                  ),
                  Positioned(
                    child: Text(
                      input,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    left: 100,
                    bottom: 42,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
