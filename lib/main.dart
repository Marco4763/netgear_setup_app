import 'package:flutter/material.dart';
import 'package:routerlogin/view/main.dart';

void main() => runApp(splash());

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen(),
      title: "Splash Screen",
    );
  }
}

class screen extends StatefulWidget {
  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {

  @override
  void initState(){
    super.initState(
      );
      Future.delayed(const Duration(
          milliseconds: 3000
      ),
      (){
        setState(() {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => first()
          ));
        });
      });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("src/Bg_img.png"),
          fit: BoxFit.cover)
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height*.3,
                width: 0.0,
              ),
              Image.asset("src/splash.png", scale: 2.8,),
            ],
          ),
        ),
      ),
    );
  }
}

