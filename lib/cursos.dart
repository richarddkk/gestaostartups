import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
    Course('Como utilizar a plataforma', 'assets/images/course1.png'),
    Course('Em breve', 'assets/images/course2.png'),
    Course('Estratégia de dados', 'assets/images/course3.png'),
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
  final String imageUrl;

  Course(this.title, this.imageUrl);
}

class CourseCard extends StatelessWidget {
  final Course course;

  CourseCard(this.course);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(course.imageUrl),
          Text(course.title),
        ],
      ),
    );
  }
}
