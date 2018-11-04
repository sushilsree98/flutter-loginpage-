import 'package:flutter/material.dart';

class login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new login_state();

  }

}

class login_state extends State<login> {

  final TextEditingController _user_controller = new TextEditingController();
  final TextEditingController _password_controller = new TextEditingController();
  String invite="";

  void _erase(){
    setState((){
      _user_controller.clear();
      _password_controller.clear();
    });
  }
  void _welcome(){
    setState(() {
      if(_user_controller.text.isNotEmpty && _password_controller.text.isNotEmpty){
        invite ="welome ${(_user_controller.text)}";

      }else
        {
          invite = "Please enter your username and password";
        }
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Login form"),
        backgroundColor: Colors.blueAccent,

      ),

      backgroundColor: Colors.blueGrey,

      body: new Container(
        alignment: Alignment.center,
        child: new ListView(
          children: <Widget>[
            new Image.asset(
                'images/face.png',
              height: 96.0,
              width: 96.0,
              color: Colors.greenAccent,
            ),
            new Container(
              height: 200.0,
              width: 396.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _user_controller,
                    decoration: new InputDecoration(
                      hintText: "Username",
                      icon: Icon(Icons.person)
                    ),
                  ),
                  new TextField(
                    controller: _password_controller,
                    decoration: new InputDecoration(
                      hintText: "Password",
                      icon: Icon(Icons.lock)
                    ),
                    obscureText: true,
                  ),
                    new Container(
                      height: 95.0,
                      width: 300.2,
                      alignment: Alignment.center,
//                  color: Colors.greenAccent,



                  child: new Row(


                    children: <Widget>[

                            new Container(
                              height: 46.0,
                              width: 150.0,
                              alignment: Alignment.center,
//                              color: Colors.redAccent,
                              child:new Column(
                                  children: <Widget>[
                                    new GestureDetector(
                              child:new Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(13.0)
                              ),
                              child: new Text("Login"),
                            ),
                        onTap: _welcome,

      )])),


//                        new GestureDetector(

                            new Container(
                              height: 46.0,
                              width: 150.0,
                              alignment: Alignment.center,
//                              color: Colors.redAccent,
                              child:new Column(
                                children: <Widget>[
                                  new GestureDetector(
                                  child:new Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(13.0)
                              ),
                              child: new Text("Cancel"),
                              ),
                                  onTap: _erase,
                                  )]))


                    ],
                  )
                    )
                ]
)


              ),
             new Padding(padding: new EdgeInsets.all(23.0)),
            new Row(

                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                 child: new Text(" $invite",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic
                  ),),),
                    ],
            )





          ],

        ),
      ),
    );
  }
}