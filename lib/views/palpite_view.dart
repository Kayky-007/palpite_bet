import 'dart:math';
import 'package:flutter/material.dart';

class PalpiteView extends StatefulWidget {
  PalpiteView({super.key});

  @override
  _PalpiteViewState createState() => _PalpiteViewState();
}

class _PalpiteViewState extends State<PalpiteView> {
  int? palpite;
  int aleatorio = Random().nextInt(60) + 1;
  String? resultado;

  void verificaPalpite() {
    setState(() {
      if (palpite == aleatorio) {
        resultado = "Parabéns, você acertou! O número era $aleatorio (Novo numero disponível)";
        aleatorio = Random().nextInt(60) + 1;
      } else if (palpite! > aleatorio) {
        resultado = "Seu palpite foi MAIOR > que o número";
      } else {
        resultado = "Seu palpite foi MENOR < que o número";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Palpite"),
        backgroundColor: Colors.blue[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Número de 1 a 60",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Insira seu palpite:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                palpite = int.tryParse(value);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Seu palpite",
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                verificaPalpite();
                print(aleatorio);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[600],
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text("Verificar",
                  style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            Text(
              resultado ?? "",
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
