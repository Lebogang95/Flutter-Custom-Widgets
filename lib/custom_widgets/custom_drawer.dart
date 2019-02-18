import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/home/buy_ticket.dart';

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
                    color: Colors.grey.shade200.withOpacity(0.0)
                ),
                child: new Stack(
                    children: <Widget>[

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
                                            image: new AssetImage('images/background.jpeg'),
                                          )
                                      )),
                                ),

                                new Padding(
                                  padding: new EdgeInsets.all(15.0),
                                  child: Text("Bongani Nkosi",

                                    style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 15.0),
                                  ),
                                ),

                                new Padding(
                                  padding: new EdgeInsets.all(8.0),
                                  child: Text("nkosilebogang95@gmail.com",

                                    style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 10.0),
                                  ),
                                ),

                                new Padding(

                                    padding: new EdgeInsets.only(left: 30.0, right: 30.0,top: 16.0,bottom: 16.0),

                                    child: ConstrainedBox(
                                        constraints: const BoxConstraints(minWidth: double.infinity),
                                        child: OutlineButton(
                                          child: new Text("Logout",
                                            style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white),
                                          ),
                                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(13.0)),
                                          borderSide: new BorderSide(color: Colors.white), onPressed: () {},
                                        )
                                    )
                                ),

                              ]
                          ),

                          ListTile(
                            leading: Icon(Icons.phone, color: Colors.white,),
                            title: Text('Add Leads',
                              style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 12.0),
                            ),
                            onTap: () {
                              Navigator.of(context)
                                  .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => BuyTicketPage()), (Route<dynamic> route) => false);
                            },
                          ),

                          ListTile(
                            leading: Icon(Icons.star, color: Colors.white,),
                            title: Text('Points Redemption',style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 12.0),),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.of(context).pushNamed('/points_redemption');
                            },
                          ),

                          ListTile(
                            leading: Icon(Icons.plus_one, color: Colors.white,),
                            title: Text('Points',style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 12.0),),
                            onTap: () {

                              Navigator.pop(context);
                            },
                          ),

                          ListTile(
                            leading: Icon(Icons.account_circle, color: Colors.white,),
                            title: Text('Profile',style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 12.0),),
                            onTap: () {

                              Navigator.pop(context);
                            },
                          ),

                          ListTile(
                            leading: Icon(Icons.dashboard, color: Colors.white,),
                            title: Text('Dashboard',style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 12.0),),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.of(context).pushNamed('/dashboard');
                            },
                          ),

                          ListTile(
                            leading: Icon(Icons.home, color: Colors.white,),
                            title: Text('Home',style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 12.0),),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.of(context).pushNamed('/home_page');
                            },
                          ),

                          ListTile(
                            title: Text('Communicate',
                              style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 12.0),
                            ),
                            onTap: () {

                              Navigator.pop(context);
                            },
                          ),

                          ListTile(
                            leading: Icon(Icons.book, color: Colors.white,),
                            title: Text('Privacy Policy',style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 12.0),),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.of(context).pushNamed('/privacy_policy');
                            },
                          ),

                          ListTile(
                            leading: Icon(Icons.call, color: Colors.white,),
                            title: Text('Contact Us',style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 12.0),),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.of(context).pushNamed('/contact_us');
                            },
                          ),

                          ListTile(
                            leading: Icon(Icons.info, color: Colors.white,),
                            title: Text('About App',style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 12.0),),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.of(context).pushNamed('/about_app');
                            },
                          ),

                          ListTile(
                            title: Text('Settings',
                              style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 12.0),
                            ),
                            onTap: () {

                              Navigator.pop(context);
                            },
                          ),

                          ListTile(
                            leading: Icon(Icons.settings, color: Colors.white,),
                            title: Text('Settings',style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white, fontSize: 12.0),),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.of(context).pushNamed('/settings');
                            },
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