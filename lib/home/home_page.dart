import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/custom_widgets/drawer_button.dart';
import 'package:flutter_custom_widget/custom_widgets/small_card.dart';
import 'package:flutter_custom_widget/custom_widgets/drawer.dart';
import 'package:flutter_custom_widget/custom_widgets/large_card.dart';
import 'package:flutter_custom_widget/utils/gradient_backdrop_1.dart';

var _scaffoldKey = new GlobalKey<ScaffoldState>();

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldKey,

      drawer: CustomDrawer(),

      body: new Stack(
        children: <Widget>[

          /// Custom gradient backdrop which I constructed. It can be customised easily using one line of code and it can be used across the entire app if you want the effect
          GradientBackdrop_1(hexColor_1: Colors.black12, hexColor_2: Colors.black87, imagePath: 'images/demo_image_1.jpg',),

          new Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 0.0),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[

                      DrawerButton(),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[

                          Padding(
                              padding: EdgeInsets.only(left: 8, bottom: 24.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Now Showing', style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),),
                                  Text('View All', style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                          ),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                LargeCard(image: 'images/poster_6.jpg',title: 'Averngers Infinity War',),
                                SizedBox(width: 16.0,),
                                LargeCard(image: 'images/poster_5.jpg',title: 'Averngers Infinity War',),
                                SizedBox(width: 16.0,),
                                LargeCard(image: 'images/poster_4.jpg',title: 'Averngers Infinity War',),
                              ],
                            ),
                          ),

                          SizedBox(height: 24.0,),

                          Padding(
                              padding: EdgeInsets.only(left: 8, bottom: 24.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Coming Soon', style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
                                  ),
                                  Text('View All', style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                          ),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                SmallCard(image: 'images/poster_1.jpg',title: 'Averngers Infinity War',),
                                SizedBox(width: 16.0,),
                                SmallCard(image: 'images/poster_2.jpg', title: 'Black Panther',),
                                SizedBox(width: 16.0,),
                                SmallCard(image: 'images/poster_3.jpg',title: 'Maze Runner',),
                              ],
                            ),
                          )

                        ],
                      ),
                    ],
                  )
              )
          ),

        ],
      ),

    );
  }
}
