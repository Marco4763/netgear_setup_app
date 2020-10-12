import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routerlogin/view/main.dart';
import 'package:routerlogin/view/third.dart';

void main() => runApp(second());

class second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen(),
      title: "Plug page",
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
        builder: (context) => first()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onback,
      child: Scaffold(
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
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05, left: MediaQuery.of(context).size.width*.02),
                  alignment: Alignment.topLeft,
                  child: Text("Plug In", style: TextStyle(
                    fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.03,
                    color: Colors.white,
                  )),
                ),

                Container(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.2, right: MediaQuery.of(context).size.width*.2,
                      top: MediaQuery.of(context).size.height*.1, bottom: MediaQuery.of(context).size.height*.05),
                  child: Text("Make sure your device is plugged in", style: TextStyle(
                    fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.03,
                    color: Colors.white,
                  ), textAlign: TextAlign.center,),
                ),

                Center(
                  child: Image.asset("src/plug_in_image.png", scale: MediaQuery.of(context).orientation == Orientation.portrait ? 3.2 : 5.2,),
                ),

                Container(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.2, right: MediaQuery.of(context).size.width*.2,
                      top: MediaQuery.of(context).size.height*.1,),
                  child: FlatButton(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))
                  ),color: Colors.white,onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => third()
                    ));
                  }, child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Next', style: TextStyle(
                      fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.03,
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

