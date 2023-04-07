import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    final double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/square.png", height: 25, width: 25,),
              SizedBox(width: 5),
              Text('Shopping', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
              Row(
                children: [
                  Image.asset("assets/settings.png", height: 30, width: 30,),
                  SizedBox(width: 10),
                  Image.asset("assets/shopping-cart.png", height: 30, width: 30,),
                ],
              ),
            ],
          ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: Container(
                  height: 100,
                  width: widthScreen-50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amber
                  ),
                  child: Container(
                    height: 120,
                    width: widthScreen-50,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[800]
                  )
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}