import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Text('App'),
        ),
        drawer: NavigationDrawer(),
        body: ContentArea(),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey[900],
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.view_agenda, color: Colors.white),
              title: Text('Planos', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.school, color: Colors.white),
              title: Text('Cursos', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.support, color: Colors.white),
              title: Text('Suporte', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Configurações', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.white),
              title: Text('Sair', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class ContentArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Verificar Informações:', style: TextStyle(color: Colors.white, fontSize: 24)),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Digite aqui o que deseja buscar',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Verificar'),
          ),
          Spacer(),
          Center(child: Icon(Icons.security, size: 100, color: Colors.white)),
        ],
      ),
    );
  }
}
