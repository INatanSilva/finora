import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Adiciona um atraso de 3 segundos antes de navegar para a tela principal
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home'); // Redireciona para a tela principal
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Cor de fundo branco
      body: Center(
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Fin', // Texto "Fin"
                style: TextStyle(
                  color: Color(0xFF24A43C), // Cor verde
                  fontSize: 48, // Tamanho da fonte
                  fontStyle: FontStyle.italic, // Estilo itálico
                  fontWeight: FontWeight.bold, // Peso da fonte
                  fontFamily: 'Roboto', // Usando fonte Roboto
                ),
              ),
              TextSpan(
                text: 'ora', // Texto "ora"
                style: TextStyle(
                  color: Colors.black, // Cor preta
                  fontSize: 48, // Tamanho da fonte
                  fontWeight: FontWeight.w200, // Peso thin
                  fontStyle: FontStyle.italic, // Estilo itálico
                  fontFamily: 'Roboto', // Usando fonte Roboto
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
