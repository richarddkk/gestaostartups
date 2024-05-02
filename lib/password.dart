import 'package:flutter/material.dart';
import 'commonWidgets.dart';

class Password extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: Column(children: [
        Container(color: const Color.fromARGB(255, 55, 147, 223), width: screenSize.width, height: 350, child: const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(top: 150, left: 40),
            child: Text("Forgot Password", style: TextStyle(color: Colors.white, fontSize: 55.0, height: 1)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Text("New password", style: TextStyle(color: Colors.white, fontSize: 16.0, height: 3))
          ),
        ])),

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image.asset("Imagens/cadeado.jpeg", scale: 1.2),
          ),

          const Text("Enter your email, phone, or username and we'll send you a link to change a new password", textAlign: TextAlign.center, style: TextStyle(color: Colors.blue)),

          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: roundedTextfield(screenSize: screenSize, upperName: "", upperNameColor: Colors.blue),
          ),

        Expanded(child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            width: screenSize.width,
            color: const Color.fromARGB(255, 238, 219, 45),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {},
                child: const SizedBox(width: 200, height: 50, child: Center(child: Text("Send", style: TextStyle(fontSize: 20.0, color: Colors.white))))
              ),
            ),
          ),
        ))
      ]),
    );
  }
}