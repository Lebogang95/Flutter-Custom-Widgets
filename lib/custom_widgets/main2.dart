import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/custom_widgets/bottom_card.dart';
import 'package:flutter_custom_widget/custom_widgets/custom_drawer2.dart';
import 'package:flutter_custom_widget/custom_widgets/top_card.dart';

var _scaffoldKey = new GlobalKey<ScaffoldState>();

void main2() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Colors.transparent,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage2(title: ''),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  MyHomePage2({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState2 createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State<MyHomePage2> {

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
                    image: new AssetImage('images/poster_2.jpg'),
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
                      Colors.black45,
                      Colors.black,
                    ],
                    stops: [0.0,0.5]
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

                          SizedBox(height: 100.0),

                          Padding(
                            padding: EdgeInsets.only(left: 0, bottom: 8.0),
                            child: Text(
                              'Black Panther',
                              style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 36.0, fontWeight: FontWeight.bold),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 4, bottom: 16.0, right: 4.0),
                            child: Text(
                              '2017  |  Action  |  Drama',
                              style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 10.0, fontWeight: FontWeight.w100),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left:0.0, top: 0.0, bottom: 16.0),
                            child: Row(
                              children: <Widget>[

                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14.0,
                                ),

                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14.0,
                                ),

                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14.0,
                                ),

                                Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 14.0,
                                ),

                                Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 14.0,
                                ),

                              ],
                            ),
                          ),

                          Row(
                            children: <Widget>[
                              OutlineButton(
                                  child: new Text(
                                    'Watch The Trailer',
                                    style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: null,
                                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                              ),

                              SizedBox(width: 8.0,),

                              IconButton(icon: Icon(Icons.add_circle_outline,color: Colors.white,size: 20.0), onPressed: () {},),
                              IconButton(icon: Icon(Icons.file_download,color: Colors.white,size: 20.0), onPressed: () {},),
                              IconButton(icon: Icon(Icons.share,color: Colors.white,size: 20.0), onPressed: () {},),
                            ],
                          ),

                          Padding(
                              padding: EdgeInsets.only(left:0.0, top: 32.0, bottom: 0.0),
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[

                                  Padding(
                                    padding: EdgeInsets.only(left: 4, bottom: 16.0, right: 4.0),
                                    child: Text(
                                      'Synopsis',
                                      style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 4, bottom: 16.0, right: 4.0),
                                    child: Text(
                                      '|',
                                      style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 4, bottom: 16.0, right: 4.0),
                                    child: Text(
                                      'Cast',
                                      style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 4, bottom: 16.0, right: 4.0),
                                    child: Text(
                                      '|',
                                      style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 4, bottom: 16.0, right: 4.0),
                                    child: Text(
                                      'Rewards',
                                      style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                ],
                              ),
                            )
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 32),
                            child: Container(
                              height: 0.2,
                              color: Colors.white,
                            ),
                          ),

                          Text('After the death of his father, TChalla returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, TChallas mettle as king -- and as Black Panther -- gets tested when hes drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.', style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w100),),

                          Padding(
                              padding: EdgeInsets.only(top:32.0, bottom: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('More like this', style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
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



      bottomNavigationBar: BottomAppBar(
          elevation: 0.0,
          color: Colors.black,
          child: MaterialButton(
            elevation: 0.0,
            color: Colors.blue,
            child: SizedBox(
              width: double.infinity,
              child: new Text("Book Now",
                textAlign: TextAlign.center,
                style: new TextStyle(fontFamily: 'VarelaRound-Regular', color:  Colors.white, fontSize: 16),
              ),
            ),
            onPressed: (){},
          ),
      ),


    );
  }
}