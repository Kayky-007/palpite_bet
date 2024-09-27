import 'package:flutter/material.dart';
import 'package:palpite_bet/views/palpite_view.dart';
import 'package:palpite_bet/views/telaInicial_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   routes: {
    '/': (context) => const TelainicialView(),
    '/palpite': (context) => const PalpiteView(),
   },
initialRoute: '/',
    );
  }
}