import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/custom_widgets/rating_star.dart';
import 'package:flutter_custom_widget/utils/const.dart';

class LargeCard extends StatefulWidget {

  final String image;
  final String title;

  LargeCard({Key key, this.image, this.title}) : super(key:key);

  @override
  State createState() => _LargeCard(image: image, title: title);

}

class _LargeCard extends State<LargeCard> {

  _LargeCard( {Key key,this.image, this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: SizedBox(
              height: 300,
              width: 250,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[

                  ConstrainedBox(
                    constraints: const BoxConstraints.expand(),
                    //child: new FlutterLogo(),
                    //child: Image.asset('images/background.jpg'),
                    child: DecoratedBox(
                      decoration: new BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12.0),
                        image: new DecorationImage(
                            image: new AssetImage(image),
                            fit: BoxFit.fitWidth

                        ),
                      ),
                    ),
                  ),

                ],
              )
            )
        ),

        Padding(padding: EdgeInsets.only(top: 20.0, left: 8.0, bottom: 8.0),
          child: Text('Avengers', style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
        ),

        Padding(padding: EdgeInsets.only(top: 0.0, left: 8.0, bottom: 8.0),
          child: Text('Action - Marvel Studios', style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w100),),
        ),

        Padding(padding: EdgeInsets.only(left:8.0, top: 0.0, bottom: 20.0),
          child: Row(
            children: <Widget>[

              RatingStar(hexColor: starColorYellow,),

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
                color: Colors.yellow,
                size: 14.0,
              ),

            ],
          ),
        )

      ],
    );
  }

}