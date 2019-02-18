import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/home/buy_ticket.dart';

class SmallCard extends StatefulWidget {

  final String image;
  final String title;

  SmallCard({Key key, this.image, this.title}) : super(key:key);

  @override
  State createState() => _SmallCard(image: image, title: title);

}

class _SmallCard extends State<SmallCard> {

  _SmallCard( {Key key,this.image, this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        GestureDetector(

          onTap: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation1, animation2) { return BuyTicketPage();},
              transitionsBuilder: (context, animation1, animation2, child) {
                return FadeTransition(
                  opacity: animation1,
                  child: child,
                );
              },
              transitionDuration: Duration(milliseconds: 500),
            ),
            );
          },

          child: Card(
              elevation: 16.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: SizedBox(
                height: 200,
                width: 130,
                child: ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  //child: new FlutterLogo(),
                  //child: Image.asset('images/background.jpg'),
                  child: DecoratedBox(
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: new DecorationImage(
                          image: new AssetImage(image),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                ),
              )
          ),
        ),

        Padding(padding: EdgeInsets.only(top: 20.0, bottom: 8.0),
          child: Text(title, style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),),
        ),

        Padding(padding: EdgeInsets.only(top: 0.0, left: 0.0, bottom: 30.0),
          child: Text('14 January 2019', style: new TextStyle(fontFamily: 'VarelaRound-Regular',color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w100),),
        ),
      ],
    );
  }

}