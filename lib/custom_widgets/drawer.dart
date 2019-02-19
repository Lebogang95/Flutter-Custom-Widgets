import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/custom_widgets/drawer_menu_button.dart';
import 'package:flutter_custom_widget/custom_widgets/horizontal_divider.dart';
import 'package:flutter_custom_widget/home/buy_ticket.dart';
import 'package:flutter_custom_widget/utils/gradient_backdrop_1.dart';

class CustomDrawer extends StatefulWidget {

  final String image;
  final String title;

  CustomDrawer({Key key, this.image, this.title}) : super(key:key);

  @override
  State createState() => _CustomDrawer(image: image, title: title);

}

class _CustomDrawer extends State<CustomDrawer> {

  _CustomDrawer( {Key key,this.image, this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(

          child: ClipRect(
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: new Container(
                //width: 200.0,
                // height: 200.0,
                decoration: new BoxDecoration(
                    color: Colors.blue
                ),

                child: new Stack(
                    children: <Widget>[

                      GradientBackdrop_1(hexColor_1: Colors.black12, hexColor_2: Colors.black87, imagePath: 'images/demo_image_1.jpg',),

                      ListView(

                        children: <Widget>[

                          new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                new Padding(
                                  padding: new EdgeInsets.all(15.0),
                                  child: Container(
                                      width: 70.0,
                                      height: 70.0,
                                      decoration: new BoxDecoration(
                                          border: new Border.all(color: Colors.white),
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                            fit: BoxFit.fill,
                                            image: new AssetImage('images/poster_1.jpg'),
                                          )
                                      )),
                                ),

                                new Padding(
                                  padding: new EdgeInsets.all(15.0),
                                  child: Text("Lebogang Nkosi",

                                    style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 15.0),
                                  ),
                                ),

                                new Padding(
                                  padding: new EdgeInsets.all(8.0),
                                  child: Text("nkosilebogang95@gmail.com",

                                    style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 10.0),
                                  ),
                                ),

                                /// Horizontal Divider
                                new Padding(
                                  padding: new EdgeInsets.only(left: 30.0, right: 30.0,top: 16.0,bottom: 16.0),
                                  child: HorizontalDivider(hexColor: Colors.white, height: 0.5,),
                                ),

                                /// Drawer Button
                                new Padding(
                                    padding: new EdgeInsets.only(left: 30.0, right: 30.0,top: 16.0,bottom: 16.0),
                                    child: DrawerMenuButton(buttonLabel: 'WATCH MOVIE',)
                                ),

                                /// Horizontal Divider
                                new Padding(
                                    padding: new EdgeInsets.only(left: 30.0, right: 30.0,top: 16.0,bottom: 16.0),
                                    child: HorizontalDivider(hexColor: Colors.white, height: 0.5,),
                                ),

                                /// Horizontal Divider
                                new Padding(
                                    padding: new EdgeInsets.only(left: 30.0, right: 30.0,top: 16.0,bottom: 16.0),
                                    child: DrawerMenuButton(buttonLabel: 'BOOK TICKET',)
                                ),

                                /// Horizontal Divider
                                new Padding(
                                  padding: new EdgeInsets.only(left: 30.0, right: 30.0,top: 16.0,bottom: 16.0),
                                  child: HorizontalDivider(hexColor: Colors.white, height: 0.5,),
                                ),

                                /// Horizontal Divider
                                new Padding(
                                    padding: new EdgeInsets.only(left: 30.0, right: 30.0,top: 16.0,bottom: 16.0),
                                    child: DrawerMenuButton(buttonLabel: 'RENT MOVIE',)
                                ),

                                /// Horizontal Divider
                                new Padding(
                                  padding: new EdgeInsets.only(left: 30.0, right: 30.0,top: 16.0,bottom: 16.0),
                                  child: HorizontalDivider(hexColor: Colors.white, height: 0.5,),
                                ),

                              ]
                          ),

                        ],
                      ),
                    ]
                ),
              ),
            ),
          ),

        )
    );
  }

}