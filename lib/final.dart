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
                        Expanded(
                          child: Text(heading,
                            textAlign: TextAlign.center, style:
                            TextStyle(color: Colors.brown, fontSize: 100, fontWeight: FontWeight.bold),),
                        ),

                        Text(to,
                          textAlign: TextAlign.center, style:
                          TextStyle(color: Colors.brown, fontSize: 25, fontWeight: FontWeight.bold),),

                        /*Text(body,
                          textAlign: TextAlign.center, style:
                          TextStyle(color: Colors.brown, fontSize: 25, fontWeight: FontWeight.bold),),

                        Text(from,
                          textAlign: TextAlign.center, style:
                          TextStyle(color: Colors.brown, fontSize: 25, fontWeight: FontWeight.bold),)*/
                      ],
                    ),)
                )
            )
        )
    );
  }
}