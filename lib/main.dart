import 'package:flutter/material.dart';
import 'commonWidgets.dart';
import 'registro.dart';
import 'principal.dart';
import 'planos.dart';
import 'cursos.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "Registro",
    routes: {
      "Cursos": (context) => Cursos(),
      "Planos": (context) => Planos(),
      "Principal": (context) => Principal(), 
      "Login": (context) => Login(),
      "Registro": (context) => Registro(),
    },
  ));
}

class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Imagens/cervo_aberto.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 10.0),
              child: Image.asset(
                "Imagens/coruja.png",
                alignment: Alignment.topLeft,
                scale: 0.99,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        "Entrar",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      ),
                      const Text(
                        "Entre na sua conta para continuar",
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      ),
                      const SizedBox(height: 10.0),
                      roundedTextfield(
                        screenSize: screenSize,
                        upperName: "Email",
                      ),
                      roundedTextfield(
                        screenSize: screenSize,
                        upperName: "Senha",
                      ),
                      const SizedBox(height: 10.0),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 0, 37, 48),
                          ),
                        ),
                        onPressed: () => {},
                        child: const Text(
                          "Entrar",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, "Registro"),
                          child: const Text(
                            "Não tem conta ainda? Clique aqui",
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
