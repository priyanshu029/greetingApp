import 'package:flutter/material.dart';


class finalPage extends StatelessWidget {

  finalPage({this.from,this.to,this.heading,this.body,this.image});


  String image='assets/image 2.jpg';
  String from;
  String to;
  String heading;
  String body;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            
            body: Center(

                child: Container(
                    constraints: BoxConstraints.expand(),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.cover)
                    ),
                    child: Center(child: new Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:24.0,left: 16.0,right: 16.0),
                              child: Text(heading,
                                textAlign: TextAlign.center, style:
                                TextStyle(color: Colors.brown, fontSize: 50, fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:100.0,top: 8.0),
                              child: Text(to,
                                textAlign: TextAlign.center, style:
                                TextStyle(color: Colors.brown, fontSize: 25, fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:32.0,right: 45.0,left:45.0),
                          child: Text(" O ut of the abstraction of nature comes its productivity Out of the abstraction of nature comes its productivity, and the production of a surplus over and above the necessitiesof survival. Out of this expanding surplus over necessity comes an expanding capacity to hack, again and again, pro-",
                            textAlign: TextAlign.center, style:
                            TextStyle(color: Colors.brown, fontSize: 25, fontWeight: FontWeight.bold),),
                        ),

                        Expanded(
                            child:Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.only(top:8.0,bottom:16.0,left:8.0,right:8.0),
                                child: Text(from,
                                  textAlign: TextAlign.center, style:
                                  TextStyle(color: Colors.brown, fontSize: 25, fontWeight: FontWeight.bold),),
                              ),
                            ))
                      ],
                    ),)
                )
            )
        )
    );
  }
}