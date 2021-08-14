import 'package:flutter/material.dart';
import 'button.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Muro das Lamentações')),
          ),
          body: Column(
            children: [
              Image(
                image: AssetImage('./assets/muro.jpg'),
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Kotel',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Text('Jerusalem, Israel',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                        ],
                      )),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.blue),
                          Text('3.891'),
                        ],
                      ),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Button(
                        icon: Icons.call,
                        text: 'Ligar',
                      ),
                      Button(
                        icon: Icons.location_pin,
                        text: 'Endereço',
                      ),
                      Button(
                        icon: Icons.share,
                        text: 'Compartilhar',
                      ),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                      'O Muro das Lamentações ou Muro Ocidental  o segundo local mais sagrado do judaísmo, atrás somente do Santo dos Santos, no monte do Templo. Trata-se do único vestígio do antigo Templo de Herodes, erguido por Herodes, o Grande no lugar do Templo de Jerusalém inicial.'))
            ],
          )),
    );
  }
}
