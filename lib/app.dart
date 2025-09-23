import 'package:flutter/material.dart';
import 'dart:math';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  var imagemCPU = AssetImage("imagens/padrao.png");

  var resultado = "Faça a sua escolha";

  var opcoes = ["pedra", "papel", "tesoura"];

  escolher(String escolhaDoUsuario){

    var cpuChoose = Random().nextInt(opcoes.length);

    if(cpuChoose == 0 && escolhaDoUsuario == "tesoura"){
      setState(() {
        imagemCPU = AssetImage("imagens/pedra.png");
        resultado = "Você perdeu";
      });
    }else if(cpuChoose == 0 && escolhaDoUsuario == "papel"){
      setState(() {
        imagemCPU = AssetImage("imagens/pedra.png");
        resultado = "Você venceu";
      });
    }else if(cpuChoose == 0 && escolhaDoUsuario == "pedra"){
      setState(() {
        imagemCPU = AssetImage("imagens/pedra.png");
        resultado = "Empate";
      });
    }else if(cpuChoose == 1 && escolhaDoUsuario == "papel") {
      setState(() {
        imagemCPU = AssetImage("imagens/papel.png");
        resultado = "Empate";
      });
    }else if(cpuChoose == 1 && escolhaDoUsuario == "pedra") {
      setState(() {
        imagemCPU = AssetImage("imagens/papel.png");
        resultado = "Você perdeu";
      });
    }else if(cpuChoose == 1 && escolhaDoUsuario == "tesoura") {
      setState(() {
        imagemCPU = AssetImage("imagens/papel.png");
        resultado = "Você venceu";
      });
    }else if(cpuChoose == 2 && escolhaDoUsuario == "papel") {
      setState(() {
        imagemCPU = AssetImage("imagens/tesoura.png");
        resultado = "Você perdeu";
      });
    }else if(cpuChoose == 2 && escolhaDoUsuario == "pedra") {
      setState(() {
        imagemCPU = AssetImage("imagens/tesoura.png");
        resultado = "Você venceu";
      });
    }else {
      setState(() {
        imagemCPU = AssetImage("imagens/tesoura.png");
        resultado = "Empate";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokenpo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(top:32, bottom: 16),
            child: Text("Escolha do App:",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ),
          Image(image: imagemCPU),
          Padding(padding: EdgeInsets.only(top:32, bottom: 16),
            child: Text(resultado,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => escolher("pedra"),
                child: Image.asset("imagens/pedra.png", height: 100),
              ),
              GestureDetector(
                onTap: () => escolher("papel"),
                child: Image.asset("imagens/papel.png", height: 100),
              ),
              GestureDetector(
                onTap: () => escolher("tesoura"),
                child: Image.asset("imagens/tesoura.png", height: 100),
              )
            ],
          )
        ],
      ),
    );
  }
}
