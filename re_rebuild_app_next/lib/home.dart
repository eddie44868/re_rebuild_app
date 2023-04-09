import 'package:flutter/material.dart';
import 'package:re_rebuild_app_next/widget/bar.dart';
import 'package:re_rebuild_app_next/widget/product.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  bool isCollapsed = true;
  double? screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _menuScaleAnimation;
  late Animation<Offset> _slideAnimation;
  int num = 0;

   @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(
        children: [
          menu(context),
          dashboard(context)
        ],
      )
    );
  }
  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 70, right: 190),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                child: Icon(Icons.close, color: Colors.white, size: 40,),
                onTap: () {
                    setState(() {
                      _controller.reverse();
                      isCollapsed = !isCollapsed;
                    });
                  },
                ),
                SizedBox(height: 30),
                Image.asset("assets/Daco8.png", height: 50, width: 50,),
                SizedBox(height: 10),
                Text("Lilie Morgan", style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 40),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(height: 20),
                Text("Shop", style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 15),
                Text("Category", style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 15),
                Text("My Cart", style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 15),
                Text("Wishlist", style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 15),
                Text("Track Order", style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 15),
                Text("Support", style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 15),
                Text("FAQ", style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 25),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(height: 15),
                Text("Logout", style: TextStyle(color: Colors.white, fontSize: 22)),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth!,
      right: isCollapsed ? 0 : -0.2 * screenWidth!,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          animationDuration: duration,
          elevation: 8,
          color: Colors.white,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                        child: Icon(Icons.menu, color: Colors.black),
                        onTap: () {
                            setState(() {
                              _controller.forward();
                              isCollapsed = !isCollapsed;
                            });
                          },
                        ),
                        SizedBox(width: 10),
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
                    SizedBox(height: 15),
                    Center(
                      child: Container(
                        height: 170,
                        width: screenWidth!-50,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 20),
                                Container(
                                    height: 150,
                                    width: screenWidth!-50,
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
                        Flexible(
                          child: Product(imageUrl: "assets/airpods.png", text: 'Apple Airpods\nPro', text2: '\$270'),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Product(imageUrl: "assets/airpods2.png", text: 'Apple Watch\nMax', text2: '\$499'),
                        Flexible(
                          child: Product(imageUrl: "assets/laptop.png", text: 'Macbook Pro\nM1', text2: '\$1499'),
                        )
                      ],
                    )
                  ],
                ),
              )
            )
          )
        ),
      ),
    );
  }
}