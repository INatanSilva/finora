import 'package:finora/widgets/splash_screen.dart';
import 'package:flutter/material.dart';
import 'widgets/splash_screen.dart'; // Importe a tela de splash
import 'home_page.dart'; // Importe a tela principal

void main() {
  runApp(MaterialApp(
    initialRoute: '/', // Define a rota inicial
    routes: {
      '/': (context) => SplashScreen(), // Rota da tela de splash
      '/home': (context) => HomeScreen(), // Rota para a tela principal
    },
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Principal'),
      ),
      body: const Center(
        child: Text(
          'Bem-vindo à tela principal!',
          style: TextStyle(fontSize: 24), // Ajuste o tamanho da fonte
        ),
      ),
    );
  }
}
