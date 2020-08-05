import 'package:cadastro_usuario/cadastro_usuario.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormularioPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}

// var _numeros =
//         newValue.text?.replaceAll(RegExp('[^0-9]'), '')?.trim() ?? '';

//     var retorno = '';
//     var conta = 0;
//     for (var ch in _numeros.split('')) {
//       retorno += ch;
//       conta++;
//       if (conta == 4) {
//         retorno += ' ';
//         conta = 0;
//       }
//     }

// return TextEditingValue(
//       text: _numeros,
//       composing:
//           TextRange(end: _numeros.length - 1, start: _numeros.length - 1),
//       selection: TextSelection(
//         baseOffset: _numeros.length,
//         extentOffset: _numeros.length,
//       ),
//     );
