import 'package:flutter/material.dart';

class TelainicialView extends StatefulWidget {
  const TelainicialView({super.key});

  @override
  State<TelainicialView> createState() => _TelainicialViewState();
}

class _TelainicialViewState extends State<TelainicialView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Image(
              image: AssetImage('assets/images/palpite_bet.png'),
              width: 300,
            ),
            const SizedBox(height: 20),

            Text(
              "Bem-vindo ao Palpite Bet!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Teste suas habilidades e faça seus palpites! "
                "Ao iniciar o jogo, você precisará escolher um numero de 1 á 60",
                style: TextStyle(fontSize: 16, color: Colors.blue[700]),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),

            
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/palpite');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: Text(
                "Jogar",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),

            
            TextButton(
              onPressed: () {
                
              },
              child: Text(
                "Saiba mais sobre o jogo",
                style: TextStyle(color: Colors.blue[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
