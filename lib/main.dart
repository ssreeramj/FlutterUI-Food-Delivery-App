import 'dart:io';

import 'package:flutter/material.dart';

import 'detailspage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.chevron_left),
                  // iconSize: 18,
                  color: Color(0xFFE0E1E3),
                  onPressed: () {},
                ),
                Container(
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Color(0xFFE0E1E3),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Color(0xFFE0E1E3),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Healthy',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color(0xFFE0E1E3),
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Food',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color(0xFFE0E1E3),
                    fontWeight: FontWeight.w300,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            height: MediaQuery.of(context).size.height - 235,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: ListView(
                children: <Widget>[
                  _buildFoodItem(context, 'assets/plate1.png', 'Salmon Bowl', '\$26.00'),
                  _buildFoodItem(context, 'assets/plate2.png', 'Spring Bowl', '\$24.00'),
                  _buildFoodItem(
                      context, 'assets/plate3.png', 'Avocado Bowl', '\$22.00'),
                  _buildFoodItem(context, 'assets/plate4.png', 'Berry Bowl', '\$19.00'),
                  _buildFoodItem(context,   'assets/plate5.png', 'Berry Bowl', '\$19.00'),
                ],
              ),
            ),
          ),
          // SizedBox(height: 5,),
          Container(
            height: 81,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black38),
                    ),
                    child: Icon(Icons.search, size: 18)),
                Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black38),
                    ),
                    child: Icon(Icons.shopping_basket, size: 18)),
                Container(
                  width: 150,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                  child: Center(
                    child: Text('Checkout',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                        )),
                  ),
                ),
                SizedBox(
                  width: 6,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildFoodItem(BuildContext context, String imgPath, String foodName, String price) {
  return InkWell(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DetailsPage(
            heroTag: imgPath,
            foodName: foodName,
            foodPrice: price,
          ),
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.only(left: 35.0, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Hero(
                  tag: imgPath,
                  child: Image(
                    height: 60,
                    width: 60,
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(foodName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(width: 40,),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: () {},
            ),
          ),
          // SizedBox(width: 10)
        ],
      ),
    ),
  );
}
