import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routerlogin/view/forth.dart';
import 'package:routerlogin/view/last.dart';
import 'package:routerlogin/view/scan.dart';

void main() => runApp(five());

class five extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen(),
      title: "Connecting Page",
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
        builder: (context) => forth()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onback,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(32, 32, 32, 9),
          title: Text("Connecting to Router", style: TextStyle(
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
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.2, right: MediaQuery.of(context).size.width*.2,
                      top: MediaQuery.of(context).size.height*.1, bottom: MediaQuery.of(context).size.height*.02),
                  child: Text("Let’s connect your router/extender now", style: TextStyle(
                    fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.03,
                    color: Colors.white,
                  ), textAlign: TextAlign.center,),
                ),


                Center(
                  child: Image.asset("src/let's_connect_router_img.png", scale: MediaQuery.of(context).orientation == Orientation.portrait ? 2.8 : 4.8,),
                ),

                Container(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.2, right: MediaQuery.of(context).size.width*.2,
                      top: MediaQuery.of(context).size.height*.05, bottom: MediaQuery.of(context).size.width*.02),
                  child: FlatButton(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))
                  ),color: Colors.white,onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => scan()
                    ));}, child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Connect Now', style: TextStyle(
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

