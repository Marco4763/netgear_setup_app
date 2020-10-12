import 'package:flutter/material.dart';
import 'package:routerlogin/view/second.dart';

void main() => runApp(first());

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen(),
      title: "Product page",
    );
  }
}

class screen extends StatefulWidget {
  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 32, 32, 9),
        title: Text("Select Your Product", style: TextStyle(
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
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => second()
                  ));
                },

                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02, bottom: MediaQuery.of(context).size.height*.02),
                  child: ListTile(
                    leading: Image.asset("src/wifi_router.png", scale: 1.2, width: MediaQuery.of(context).size.width*.2,),
                    title: Text("Wifi Router", style: TextStyle(
                      fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.03,
                      color: Colors.white,
                    )),
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 1.0,
                color: Colors.white,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => second()
                  ));
                },
                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02, bottom: MediaQuery.of(context).size.height*.02),
                  child: ListTile(
                    leading: Image.asset("src/range_extender.png", scale: 1.2, width: MediaQuery.of(context).size.width*.2,),
                    title: Text("Range Extender", style: TextStyle(
                      fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.03,
                      color: Colors.white,
                    )),
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 1.0,
                color: Colors.white,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => second()
                  ));
                },
                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02, bottom: MediaQuery.of(context).size.height*.02),
                  child: ListTile(
                    leading: Image.asset("src/cable_modem_router.png", scale: 1.2, width: MediaQuery.of(context).size.width*.2,),
                    title: Text("Cable modem router", style: TextStyle(
                      fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.03,
                      color: Colors.white,
                    )),
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 1.0,
                color: Colors.white,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => second()
                  ));
                },
                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02, bottom: MediaQuery.of(context).size.height*.02),
                  child: ListTile(
                    leading: Image.asset("src/nighthawk_router.png", scale: 1.2, width: MediaQuery.of(context).size.width*.2,),
                    title: Text("Nighthawk router", style: TextStyle(
                      fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.03,
                      color: Colors.white,
                    )),
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 1.0,
                color: Colors.white,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => second()
                  ));
                },
                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02, bottom: MediaQuery.of(context).size.height*.02),
                  child: ListTile(
                    leading: Image.asset("src/nighthawk_extender.png", scale: 1.2, width: MediaQuery.of(context).size.width*.2,),
                    title: Text("Nighthawk extender", style: TextStyle(
                      fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.05 : MediaQuery.of(context).size.width*.03,
                      color: Colors.white,
                    )),
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 1.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

