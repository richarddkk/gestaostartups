import 'package:flutter/material.dart';

class Planos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: PlansScreen(),
      ),
    );
  }
}

class PlansScreen extends StatelessWidget {
  final List<Plan> plans = [
    Plan('Plano Gratuito', 'R\$0', ['Recurso 1', 'Recurso 2']),
    Plan('Plano Básico', 'R\$19,99', ['Recurso 1', 'Recurso 2', 'Recurso 3']),
    Plan('Plano Premium', 'R\$29,99', ['Recurso 1', 'Recurso 2', 'Recurso 3', 'Recurso 4']),
    Plan('Plano Personalizado', 'Entre em contato', ['Recurso 1', 'Recurso 2', 'Recurso 3', 'Recurso 4', 'Recurso 5']),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Planos', style: TextStyle(color: Colors.white, fontSize: 24)),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: plans.length,
              itemBuilder: (context, index) => PlanCard(plans[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class Plan {
  final String title;
  final String price;
  final List<String> features;

  Plan(this.title, this.price, this.features);
}

class PlanCard extends StatelessWidget {
  final Plan plan;

  PlanCard(this.plan);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 20, 78, 101), // Definindo a cor do card
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(plan.title, style: TextStyle(fontSize: 20, color: Colors.white)),
            Text(plan.price, style: TextStyle(fontSize: 16, color: Colors.white)),
            ...plan.features.map((feature) => Text(feature, style: TextStyle(color: Colors.white))).toList(),
          ],
        ),
      ),
    );
  }
}
