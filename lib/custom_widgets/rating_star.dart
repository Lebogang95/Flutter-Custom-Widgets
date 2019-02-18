import 'dart:ui';

import 'package:flutter/material.dart';

class RatingStar extends StatefulWidget {

  final Color hexColor;

  RatingStar({Key key, @required this.hexColor}) : super(key:key);

  @override
  State createState() => _RatingStar(hexColor: hexColor);

}

class _RatingStar extends State<RatingStar> {

  _RatingStar( {Key key,this.hexColor});

  final Color hexColor;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: hexColor,
      size: 14.0,
    );
  }

}