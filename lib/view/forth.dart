import 'package:flutter/material.dart';
import 'package:routerlogin/view/five.dart';
import 'package:routerlogin/view/third.dart';

void main() => runApp(forth());

class forth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen(),
      title: "Reboot Page",
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
        builder: (context) => third()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onback,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(32, 32, 32, 9),
          title: Text("Reboot your Modem", style: TextStyle(
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
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*.1, bottom: MediaQuery.of(context).size.height*.02),
                  child: Image.asset("src/reboot_modem.png", scale: 3.2,),
                ),

                ListTile(
                  title: Text("1. Unplug your modem", style: TextStyle(
                    fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.04 : MediaQuery.of(context).size.width*.02,
                    color: Colors.white,
                  )),
                ),
                ListTile(
                  title: Text("2. Make sure it’s completely powered off", style: TextStyle(
                    fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.04 : MediaQuery.of(context).size.width*.02,
                    color: Colors.white,
                  )),
                ),
                ListTile(
                  title: Text("3.	If you still see lights on modem after unplugging try to remove the batteries from your modem.", style: TextStyle(
                    fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.04 : MediaQuery.of(context).size.width*.02,
                    color: Colors.white,
                  )),
                ),
                ListTile(
                  title: Text("4.	Plug your modem back in", style: TextStyle(
                    fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.04 : MediaQuery.of(context).size.width*.02,
                    color: Colors.white,
                  )),
                ),

                Container(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.2, right: MediaQuery.of(context).size.width*.2,
                      top: MediaQuery.of(context).size.height*.01, bottom: MediaQuery.of(context).size.width*.02),
                  child: FlatButton(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))
                  ),color: Colors.white,onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => five()
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

