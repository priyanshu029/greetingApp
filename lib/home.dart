
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:greeting_app/theme.dart';
import 'final.dart';



class Home extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Home>{

  final fromController = TextEditingController();
  final toController = TextEditingController();
  final headController = TextEditingController();
  final messageController = TextEditingController();



  @override
  void dispose() {
    fromController.dispose();
    toController.dispose();
    headController.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text('Greating App'),
        centerTitle: true,
      ),

      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new Center(
                  child: new Column(
                    children: <Widget>[
                      new Text('Create Here',style: new TextStyle(fontSize: 50.0,color: Colors.blue),),
                      new TextField(
                        controller: fromController,
                        decoration: new InputDecoration(
                            labelText: 'From',
                            fillColor: Colors.amber,
                            hintText: 'Person A'
                        ),
                        autofocus: true,
                        autocorrect: true,

                      ),
                      new TextField(
                        controller: toController,
                        decoration: new InputDecoration(
                          labelText: 'To',
                          fillColor: Colors.amber,
                          hintText: 'Person B',
                        ),
                        autofocus: true,
                        autocorrect: true,

                      ),
                      new TextField(
                        controller: headController,
                        decoration: new InputDecoration(
                            labelText: 'Heading',
                            fillColor: Colors.amber
                        ),
                        autofocus: true,
                        autocorrect: true,

                      ),
                      new TextField(
                        controller: messageController,
                        decoration: new InputDecoration(
                            labelText: 'Message',
                            fillColor: Colors.amber
                        ),
                        autofocus: true,
                        autocorrect: true,

                      ),



                      new Container(
                        padding: new EdgeInsets.only(top:48.0),
                        child: new Column(children: <Widget>[
                          new MaterialButton(
                            height: 40.0,
                            minWidth: 200.0,
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            child: new Text('Go'),
                            onPressed: ()  {

                              //Navigator.of(context).pushNamed('/back') ;
                              Navigator.push(context, new MaterialPageRoute(
                                  builder:(BuildContext context) => new back(from: fromController.text,to: toController.text,heading: headController.text,body: messageController.text,)
                              ));
                            },
                            splashColor: Colors.redAccent,

                          ),
                        ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),

      ),


    );
  }


}