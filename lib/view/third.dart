import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routerlogin/view/forth.dart';
import 'package:routerlogin/view/second.dart';

void main() => runApp(third());

class third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen(),
      title: "Connect page",
    );
  }
}

class screen extends StatefulWidget {
  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {

  Future<bool> _onback(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => second()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onback,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(32, 32, 32, 9),
          title: Text("Connect Router", style: TextStyle(
            color: Colors.white,
          ),),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("src/Bg_img.png"),
                  fit: BoxFit.cover)
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05, right: MediaQuery.of(context).size.width*.05,
                      top: MediaQuery.of(context).size.height*.1, bottom: MediaQuery.of(context).size.height*.05),
                  child: Text("Use the provided Ethernet cable to connect your modem to your router's internet port which is generally in yellow color."
                      , style: TextStyle(
                        fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.02,
                        color: Colors.white,
                      ), textAlign: TextAlign.center,),
                ),

                Center(
                  child: Image.asset("src/connect_router.png", scale: MediaQuery.of(context).orientation == Orientation.portrait ? 2.8 : 4.8,),
                ),

                Container(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.2, right: MediaQuery.of(context).size.width*.2,
                      top: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.height*.1 : MediaQuery.of(context).size.height*.05, bottom: MediaQuery.of(context).size.width*.02),
                  child: FlatButton(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))
                  ),color: Colors.white,onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => forth()
                    ));}, child: Container(
                    padding: EdgeInsets.all(10.0),
                      child: Text('Next', style: TextStyle(
                      fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.02,
                      color: Colors.black,
                  )),
                    )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

