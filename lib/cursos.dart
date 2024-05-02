import 'package:flutter/material.dart';

class Cursos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: CoursesScreen(),
      ),
    );
  }
}

class CoursesScreen extends StatelessWidget {
  final List<Course> courses = [
    Course('Curso 1', 'Descrição do curso 1'),
    Course('Curso 2', 'Descrição do curso 2'),
    Course('Curso 3', 'Descrição do curso 3'),
    Course('Curso 4', 'Descrição do curso 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Cursos', style: TextStyle(color: Colors.white, fontSize: 24)),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: courses.map((course) => CourseCard(course)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class Course {
  final String title;
  final String description;

  Course(this.title, this.description);
}

class CourseCard extends StatelessWidget {
  final Course course;

  CourseCard(this.course);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900], // cor do card
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(course.title, style: TextStyle(fontSize: 20, color: Colors.white)),
            SizedBox(height: 8),
            Text(course.description, style: TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
