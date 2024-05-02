import 'package:flutter/material.dart';

SizedBox roundedTextfield({required Size screenSize, required String upperName, String? label, Color? upperNameColor = Colors.white}) {
  return SizedBox(
    width: screenSize.width - 100,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(upperName, style: TextStyle(color: upperNameColor)),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: TextField(decoration: InputDecoration(border: InputBorder.none, hintText: label))
        ),
      ],
    ),
  );
}