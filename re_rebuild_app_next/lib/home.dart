import 'package:flutter/material.dart';
import 'package:re_rebuild_app_next/widget/bar.dart';
import 'package:re_rebuild_app_next/widget/product.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
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
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 170,
                    width: widthScreen-50,
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 20),
                            Container(
                                height: 150,
                                width: widthScreen-50,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[800]
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 15, top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white
                                      ),
                                      child: Center(
                                        child: Text('Promo', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey[800]),),
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text('Up to', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white)),
                                    Row(
                                      children: [
                                        Text('30%', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white)),
                                        SizedBox(width: 5),
                                        Text('off', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white)),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ),
                          ],
                        ),
                        Positioned(
                          left: 130,
                          right: 20,
                          child: Image.asset("assets/photo3.png", height: 200, width: 100,),
                        ),
                      ],
                    )
                  ),
                ),
                SizedBox(height: 25),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            num = 0;
                          });
                        },
                        child: Bar(text: "Recommended", lebar: 120, warna: (num == 0) ? Colors.grey.shade900 : Colors.grey.shade100, warna2: (num == 0) ? Colors.white : Colors.grey.shade900,),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            num = 1;
                          });
                        },
                        child: Bar(text: "Phone", lebar: 60, warna: (num == 1) ? Colors.grey.shade900 : Colors.grey.shade100, warna2: (num == 1) ? Colors.white : Colors.grey.shade900,),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            num = 2;
                          });
                        },
                        child: Bar(text: "Laptop", lebar: 70, warna: (num == 2) ? Colors.grey.shade900 : Colors.grey.shade100, warna2: (num == 2) ? Colors.white : Colors.grey.shade900,),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            num = 3;
                          });
                        },
                        child: Bar(text: "Speaker", lebar: 70, warna: (num == 3) ? Colors.grey.shade900 : Colors.grey.shade100, warna2: (num == 3) ? Colors.white : Colors.grey.shade900,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Product(imageUrl: "assets/watch.png", text: 'Apple Watch\nSeries 6', text2: '\$648'),
                    Product(imageUrl: "assets/airpods.png", text: 'Apple Airpods\nPro', text2: '\$270'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Product(imageUrl: "assets/airpods2.png", text: 'Apple Watch\nMax', text2: '\$499'),
                    Product(imageUrl: "assets/laptop.png", text: 'Macbook Pro\nM1', text2: '\$1499'),
                  ],
                )
              ],
            ),
          )
        )
      ),
    );
  }
}