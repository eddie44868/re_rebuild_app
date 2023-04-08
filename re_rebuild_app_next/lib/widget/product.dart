import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Product extends StatelessWidget {
  String imageUrl;
  String text;
  String text2;
  Product({ Key? key, required this.imageUrl, required this.text, required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey
            ),
            child: Center(
              child: Image.asset(imageUrl, height: 140, width: 140,),
            ),
          ),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)),
              Text(text2, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),),
            ],
          ),
        ],
      ),
    );
  }
}