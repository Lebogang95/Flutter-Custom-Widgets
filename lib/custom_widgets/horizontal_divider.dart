import 'dart:ui';

import 'package:flutter/material.dart';

class HorizontalDivider extends StatefulWidget {

  final Color hexColor;
  final double height;

  HorizontalDivider({Key key, @required this.hexColor, @required this.height}) : super(key:key);

  @override
  State createState() => _HorizontalDivider(hexColor: hexColor, height: height);

}

class _HorizontalDivider extends State<HorizontalDivider> {

  _HorizontalDivider( {Key key,this.hexColor, this.height});

  final Color hexColor;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: hexColor,
    );
  }

}