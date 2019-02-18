import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/custom_widgets/bottomBar.dart';
import 'package:flutter_custom_widget/custom_widgets/bottom_card.dart';
import 'package:flutter_custom_widget/custom_widgets/custom_drawer2.dart';
import 'package:flutter_custom_widget/custom_widgets/top_card.dart';

var _scaffoldKey = new GlobalKey<ScaffoldState>();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Colors.transparent,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldKey,

      drawer: CustomDrawer(),

      body: new Stack(

        children: <Widget>[
          new ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            //child: new FlutterLogo(),
            //child: Image.asset('images/background.jpg'),
            child: DecoratedBox(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage('images/demo_image_1.jpg'),
                    fit: BoxFit.cover

                ),
              ),
            ),
          ),


          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.black12,
                      Colors.black87,
                    ],
                    stops: [0.0,0.8]
                )
            ),
          ),

          new Padding(padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 0.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[

                  GestureDetector(
                    onTap:(){_scaffoldKey.currentState.openDrawer();},
                    child: Padding(padding: EdgeInsets.only(left: 16.0, top: 40.0, bottom: 32.0),
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: DecoratedBox(
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            image: new DecorationImage(
                                image: new AssetImage('images/menu.png'),
                                fit: BoxFit.fitWidth

                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

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
                            Text('Now Showing', style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
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
                            TopCard(image: 'images/poster_6.jpg',title: 'Averngers Infinity War',),
                            SizedBox(width: 16.0,),
                            TopCard(image: 'images/poster_5.jpg',title: 'Averngers Infinity War',),
                            SizedBox(width: 16.0,),
                            TopCard(image: 'images/poster_4.jpg',title: 'Averngers Infinity War',),
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
                            BottomCard(image: 'images/poster_1.jpg',title: 'Averngers Infinity War',),
                            SizedBox(width: 16.0,),
                            BottomCard(image: 'images/poster_2.jpg', title: 'Black Panther',),
                            SizedBox(width: 16.0,),
                            BottomCard(image: 'images/poster_3.jpg',title: 'Maze Runner',),
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
