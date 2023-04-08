import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Bar extends StatelessWidget {
  String text;
  double lebar;
  Color warna;
  Color warna2;
  Bar({ Key? key, required this.text, required this.lebar, required this.warna, required this.warna2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: lebar,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: warna
          ),
          child: Center(
            child: Text(text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: warna2)),
          ),
        ),
        SizedBox(width: 25),
      ],
    );
  }
}