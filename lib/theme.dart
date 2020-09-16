import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:greeting_app/final.dart';




class back extends StatefulWidget {

  back({this.from,this.to,this.heading,this.body});

  String from;
  String to;
  String heading;
  String body;

  @override
  _backState createState() => new _backState(from,to,heading,body);
}

class _backState extends State<back>{

  _backState(this.from,this.to,this.heading,this.body);

  String from;
  String to;
  String heading;
  String body;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Theme'),
        centerTitle: false,
      ),

      body: new ListView(
        padding: new EdgeInsets.only(top:32.0),
          children: <Widget>[
              //new Text('Add widget'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  height: 40.0,
                  minWidth: 10.0,
                  onLongPress: (){},
                  textColor: Colors.white,
                  splashColor: Colors.black,
                  elevation: 8.0,
                  child: Container(
                    padding: EdgeInsets.all(100.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image 1.jpg'),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  // ),
                  onPressed: () {
                    print('Tapped');
                    //Navigator.of(context).pushNamed('/final');
                    Navigator.push(context,new MaterialPageRoute(
                      builder: (BuildContext context)=> new finalPage(from: this.from,to: this.to,heading: this.heading,body: this.body,image: 'assets/image 1.jpg'),
                    ));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  height: 40.0,
                  minWidth: 10.0,
                  textColor: Colors.white,
                  splashColor: Colors.pinkAccent,
                  elevation: 8.0,
                  child: Container(
                    padding: EdgeInsets.all(100.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image 2.jpg'),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  // ),
                  onPressed: () {
                    print('Tapped');
                    Navigator.push(context,new MaterialPageRoute(
                      builder: (BuildContext context)=> new finalPage(from: this.from,to: this.to,heading: this.heading,body: this.body,image: 'assets/image 2.jpg'),
                    ));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  height: 40.0,
                  minWidth: 10.0,
                  onLongPress: (){},
                  textColor: Colors.white,
                  splashColor: Colors.black,
                  elevation: 8.0,
                  child: Container(
                    padding: EdgeInsets.all(100.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image 3.jpeg'),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  // ),
                  onPressed: () {
                    print('Tapped');
                    //Navigator.of(context).pushNamed('/final');
                    Navigator.push(context,new MaterialPageRoute(
                      builder: (BuildContext context)=> new finalPage(from: this.from,to: this.to,heading: this.heading,body: this.body,image: 'assets/image 3.jpeg'),
                    ));
                  },
    ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                height: 40.0,
                minWidth: 10.0,
                onLongPress: (){},
                textColor: Colors.white,
                splashColor: Colors.black,
                elevation: 8.0,
                child: Container(
                  padding: EdgeInsets.all(100.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image 4.jpeg'),
                        fit: BoxFit.fitHeight),
                  ),
                ),
                // ),
                onPressed: () {
                  print('Tapped');
                  //Navigator.of(context).pushNamed('/final');
                  Navigator.push(context,new MaterialPageRoute(
                    builder: (BuildContext context)=> new finalPage(from: this.from,to: this.to,heading: this.heading,body: this.body,image: 'assets/image 4.jpeg'),
                  ));
                },
              ),
            ),
            ],
          ),


    );

  }


}

/*new Container(
        padding: new EdgeInsets.only(top:32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              //new Text('Add widget'),
              MaterialButton(
                height: 40.0,
                minWidth: 10.0,
                textColor: Colors.white,
                splashColor: Colors.black,
                elevation: 8.0,
                child: Container(
                  padding: EdgeInsets.all(100.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image 1.jpg'),
                        fit: BoxFit.fitHeight),
                  ),
                ),
                // ),
                onPressed: () {
                  print('Tapped');
                  //Navigator.of(context).pushNamed('/final');
                  Navigator.push(context,new MaterialPageRoute(
                      builder: (BuildContext context)=> new finalPage(from: this.from,to: this.to,heading: this.heading,body: this.body,image: 'assets/image 1.jpg'),
                  ));
                },
              ),
              MaterialButton(
                height: 40.0,
                minWidth: 10.0,
                textColor: Colors.white,
                splashColor: Colors.pinkAccent,
                elevation: 8.0,
                child: Container(
                  padding: EdgeInsets.all(100.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image 2.jpg'),
                        fit: BoxFit.fitHeight),
                  ),
                ),
                // ),
                onPressed: () {
                  print('Tapped');
                  Navigator.push(context,new MaterialPageRoute(
                    builder: (BuildContext context)=> new finalPage(from: this.from,to: this.to,heading: this.heading,body: this.body,image: 'assets/image 2.jpg'),
                  ));
                },
              ),
            ],
          ),
        ),

      ),*/