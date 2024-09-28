import 'package:flutter/material.dart';
import 'package:palpite_bet/controller/controller_palpite.dart';

// ignore: must_be_immutable
class PalpiteView extends StatelessWidget {
   PalpiteView({super.key});
ControllerPalpite controllerPalpite = ControllerPalpite();
 
 
void verificaPalpite(){
  
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
              "Numero de 1 á 60",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),  
            Text(
              "Insira seu palpite:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Seu palpite",
              ),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: (){
                print(controllerPalpite.aleatorio);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[600],
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text("Adicionar Palpite", style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(height: 20),

           
          ],
        ),
      ),
    );
  }
}
