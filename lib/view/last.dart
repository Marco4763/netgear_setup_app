import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routerlogin/view/five.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(last());

class last extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen(),
      title: "Support page",
    );
  }
}

class screen extends StatefulWidget {
  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {

  _launchTL() async {
    const url = 'tel:+1 833 462 7719';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  DateTime currentBackPressTime;

  Future<bool> _onback(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => five()
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
                  child: Text("Support Team", style: TextStyle(
                    fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.03,
                    color: Colors.white,
                  )),
                ),

                Container(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.2, right: MediaQuery.of(context).size.width*.2,
                      top: MediaQuery.of(context).size.height*.1, bottom: MediaQuery.of(context).size.height*.05),
                  child: Center(child: Text("Call immediately", style: TextStyle(
                    fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.03,
                    color: Colors.white,
                  ))),
                ),

                Center(
                  child: Image.asset("src/support_img.png", scale: MediaQuery.of(context).orientation == Orientation.portrait ? 3.2 : 5.2,),
                ),

                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05),
                    child: GestureDetector(
                      onTap: _launchTL,
                      child: Text("Toll Free: 1-833-462-7719", style: TextStyle(
                        fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.03,
                        color: Colors.white,
                      )),
                    ),
                  )
                ),

                Container(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.2, right: MediaQuery.of(context).size.width*.2,
                      top: MediaQuery.of(context).size.height*.02, bottom:  MediaQuery.of(context).size.width*.02),
                  child: FlatButton(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))
                  ),color: Colors.white, onPressed: () {}, child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: _launchTL,
                      child: Text('Call Now', style: TextStyle(
                        fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.03,
                        color: Colors.black,
                      )),
                    ),
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

