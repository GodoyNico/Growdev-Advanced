import "package:flutter/material.dart";
import "Utils/card_number_formarter.dart";

class atras_cartao extends StatefulWidget {
  @override
  _atras_cartaoState createState() => _atras_cartaoState();
}

class _atras_cartaoState extends State<atras_cartao> {
  var inputController = TextEditingController();
  var input = "";
  var cardFormarter = Card_number();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Seu número",
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
                Icons.directions,
                color: Colors.white70,
              ),
              counterStyle: TextStyle(color: Colors.white70),
            ),
            style: TextStyle(color: Colors.white, fontSize: 20),
            keyboardType: TextInputType.number,
            controller: inputController,
            onChanged: (value) {
              setState(() {
                input = cardFormarter.formatedNumber(value);
              });
            },
            onSubmitted: (value) {
              inputController.clear();
            },
            maxLength: 16,
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
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    color: Colors.white,
                    height: 50,
                  ),
                  Positioned(
                    child: Text(
                      input,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    left: 20,
                    bottom: 20,
                  ),
                  Positioned(
                    child: Image(
                      image: AssetImage('images/cirrus.png'),
                      width: 65,
                    ),
                    right: 10,
                    bottom: 10,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
