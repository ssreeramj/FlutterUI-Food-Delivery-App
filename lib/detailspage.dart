import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  DetailsPage({this.heroTag, this.foodName, this.foodPrice});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  String selectedCard = 'WEIGHT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7A9BEE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.white,
          icon: Icon(Icons.chevron_left),
        ),
        title: Text('Details',
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontFamily: 'Montserrat',
            )),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 80,
                color: Colors.transparent,
              ),
              Positioned(
                top: 50,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: MediaQuery.of(context).size.width / 2 - 100,
                child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.heroTag), fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 210,
                height: MediaQuery.of(context).size.height,
                child: Container(
                  height: 40,
                  width: 400,
                  color: Colors.white54,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          children: <Widget>[
                            Text(widget.foodName.split(' ')[0],
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(widget.foodName.split(' ')[1],
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 30,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            widget.foodPrice,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(width: 60),
                          Container(
                            color: Colors.grey.withOpacity(.5),
                            height: 45,
                            width: 1,
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xff7A9BEE),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text('-',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat',
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600)),
                                Text('2',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white,
                                  ),
                                  height: 25,
                                  width: 25,
                                  child: Icon(
                                    Icons.add,
                                    size: 15,
                                    color: Color(0xff7A9BEE),
                                  ),
                                )
                              ],
                            ),
                          ),
                          // SizedBox(width: 100,)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 120,
                        color: Colors.white,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            SizedBox(
                              width: 10,
                            ),
                            foodInfo('WEIGHT', '300', 'G'),
                            foodInfo('CALORIES', '267', 'CAL'),
                            foodInfo('VITAMINS', 'A, B6', 'VIT'),
                            foodInfo('AVAIL', 'N0', 'AV'),
                            SizedBox(width: 50)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 17,
                child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 18,
                          left: 130,
                          child: Text('\$52.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                              )),
                        ),
                        // rightArrow(Colors.black)
                        rightArrow(12, Colors.black87),
                        rightArrow(20, Colors.black12),
                        rightArrow(28, Colors.white10),
                        rightArrow(36, Colors.white30),
                        rightArrow(44, Colors.white60),
                        rightArrow(52, Colors.white)
                      ],
                    )),
              )
            ],
          )
        ],
      ),
    );
  }

  Positioned rightArrow(double leftPos, Color color) {
    return Positioned(
      top: 17,
      left: leftPos,
      child: Icon(Icons.chevron_right, color: color, size: 22),
    );
  }

  Padding foodInfo(String property, String quantity, String unit) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 7,
      ),
      child: InkWell(
        onTap: () {
          selectCard(property);
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeIn,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: property == selectedCard ? Color(0xff7A9BEE) : Colors.white,
            border: Border.all(
              color: property == selectedCard ?
              Colors.transparent : Colors.grey,
            ),
          ),
          width: 90,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                // color: Colors.orangeAccent.withOpacity(0.5),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Text(
                  property,
                  style: TextStyle(
                    color: property == selectedCard ?
                    Colors.white : Colors.grey,
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: 25,
                left: 10,
                child: Text(
                  quantity,
                  style: TextStyle(
                    color: property == selectedCard ?
                    Colors.white : Colors.black,
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Text(
                  unit,
                  style: TextStyle(
                    color: property == selectedCard ?
                    Colors.white : Colors.black,
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  selectCard(property) {
    setState(() {
      selectedCard = property;
    });
  }
}
