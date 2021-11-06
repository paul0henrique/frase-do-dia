import 'package:flutter/material.dart';
import 'dart:math';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Maior que a tristeza de não haver vencido é a vergonha de não ter lutado. - Rui Barbosa",
    "É melhor conquistar a si mesmo do que vencer mil batalhas. - Buda",
    "O importante não é vencer todos os dias, mas lutar sempre. - Waldemar Valle Martins",
    "Quem ousou conquistar e saiu pra lutar chega mais longe! - Charlie Brown Jr",
    "Escolher o seu tempo é ganhar tempo. - Francis Bacon",
    "Apressa-te a viver bem e pensa que cada dia é, por si só, uma vida. - Sêneca",
  ];
  var _fraseGerada = "Clique abaixo para gerar  uma frase!";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                Image.asset(
                    "images/logo.png"),
                Text(
                   _fraseGerada,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        color: Colors.black
                    )
                ),
                ElevatedButton(
                  onPressed: _gerarFrase,
                  child: Text(
                    "Nova frase",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,

                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
