import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:re_rebuild_app_next/home.dart';

class StartUp extends StatelessWidget {
  const StartUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    final double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            Stack(
              children: [
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Container(
                        height: 300,
                        width: widthScreen-60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          color: Colors.grey[850]
                        ),
                      ),
                    ],
                  )
                ),
                Center(
                  child: Image.asset('assets/photo4.png', height: 350, width: 290,),
                )
              ],
            ),
            Container(
              height: (heightScreen/2.2),
              width: widthScreen,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.white
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 36, right: 36, top: 35),
                child: Column(
                  children: [
                    Text('Find your perfect\nmatch electronic', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black)),
                    SizedBox(height: 20),
                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey[350]), textAlign: TextAlign.center,),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/dot.png', height: 10, width: 10,),
                        SizedBox(width: 10),
                        Image.asset('assets/dot.png', height: 10, width: 10, color: Colors.grey,),
                        SizedBox(width: 10),
                        Image.asset('assets/dot.png', height: 10, width: 10, color: Colors.grey,),
                        SizedBox(width: 10),
                        Image.asset('assets/dot.png', height: 10, width: 10, color: Colors.grey,),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Skip Now', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey[900],
                            ),
                            child: Center(
                              child: Icon(Icons.arrow_forward_ios, size: 25, color: Colors.white,),
                            )
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}