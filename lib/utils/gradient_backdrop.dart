import 'dart:ui';

import 'package:flutter/material.dart';

class GradientBackdrop extends StatefulWidget {

  final String imagePath;
  final Color hexColor_1;
  final Color hexColor_2;

  GradientBackdrop({
    Key key,
    @required this.hexColor_1,
    @required this.hexColor_2,
    @required this.imagePath
  }) : super(key:key);

  @override
  State createState() => _GradientBackdrop(
      hexColor_1: hexColor_1,
      hexColor_2: hexColor_2,
      imagePath: imagePath
  );

}

class _GradientBackdrop extends State<GradientBackdrop> {

  _GradientBackdrop({Key key,
    this.hexColor_1,
    this.hexColor_2,
    this.imagePath
  });

  final String imagePath;
  final Color hexColor_1;
  final Color hexColor_2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[

        new ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          //child: new FlutterLogo(),
          //child: Image.asset('images/background.jpg'),
          child: DecoratedBox(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage(imagePath),
                  fit: BoxFit.cover

              ),
            ),
          ),
        ),

        new Container(
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
        )

      ],
    );
  }

}