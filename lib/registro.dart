import 'package:flutter/material.dart';
import 'commonWidgets.dart';

class Registro extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Color upperNameColor = const Color.fromARGB(255, 255, 255, 255);

    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(children: [
        Container(
          width: screenSize.width, height: 380,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Imagens/cervo.png"),
              fit: BoxFit.cover
            )
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 10.0),
              child: Image.asset("Imagens/coruja.png", alignment: Alignment.topLeft, scale: 0.99, color: Colors.white,),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 100, left: 40),
              child: Text("Criar nova Conta", style: TextStyle(color: Colors.white, fontSize: 55.0, height: 1)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "Login");
                },
                child: const Text("Já está registrado? Clique aqui.", style: TextStyle(color: Colors.white, decoration: TextDecoration.underline, fontSize: 16.0, height: 3))
              )
            ),

          ])),

        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: roundedTextfield(screenSize: screenSize, upperName: "Nome", upperNameColor: upperNameColor),
        ),
        const SizedBox(height: 10),
        roundedTextfield(screenSize: screenSize, upperName: "Email", upperNameColor: upperNameColor),
        const SizedBox(height: 10),
        roundedTextfield(screenSize: screenSize, upperName: "Senha", upperNameColor: upperNameColor),
        const SizedBox(height: 10),
        roundedTextfield(screenSize: screenSize, upperName: "Repetir senha", upperNameColor: upperNameColor),
        const SizedBox(height: 10),

        Expanded(child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            width: screenSize.width,
            color: const Color.fromARGB(255, 0, 21, 34),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 0, 0, 0)),
                onPressed: () {},
                child: SizedBox(width: 200, height: 50, child: Center(child: Text("Enviar", style: TextStyle(fontSize: 20.0, color: const Color.fromARGB(255, 255, 255, 255)))))
              ),
            ),
          ),
        ))
      ]),
    );
  }
}