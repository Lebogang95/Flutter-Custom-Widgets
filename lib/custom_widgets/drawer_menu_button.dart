import 'dart:ui';

import 'package:flutter/material.dart';

class DrawerMenuButton extends StatefulWidget {

  final String buttonLabel;

  DrawerMenuButton({Key key, @required this.buttonLabel}) : super(key:key);

  @override
  State createState() => _DrawerMenuButton(buttonLabel: buttonLabel);

}

class _DrawerMenuButton extends State<DrawerMenuButton> {

  _DrawerMenuButton( {Key key,this.buttonLabel});

  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Text(
      buttonLabel,
      style: new TextStyle(
          fontFamily: 'VarelaRound-Regular',
          color: Colors.white,
          fontSize: 24.0,
          fontWeight: FontWeight.bold
      ),
    );
  }

}