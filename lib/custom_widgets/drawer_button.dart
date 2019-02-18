import 'package:flutter/material.dart';
var _scaffoldKey = new GlobalKey<ScaffoldState>();


class DrawerButton extends StatefulWidget {

  DrawerButton({Key key}) : super(key:key);

  @override
  State createState() => _DrawerButton();

}

class _DrawerButton extends State<DrawerButton> {

  _DrawerButton( {Key key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }

}