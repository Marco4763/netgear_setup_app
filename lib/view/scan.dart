import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routerlogin/view/last.dart';
import 'package:url_launcher/url_launcher.dart';
import 'circleprogessbar.dart';

void main() => runApp(scan());

class scan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: progessindicator(),
      title: "Support page",
    );
  }
}

class progessindicator extends StatefulWidget {
  @override
  _progessindicatorState createState() => _progessindicatorState();
}

class _progessindicatorState extends State<progessindicator> with SingleTickerProviderStateMixin{

  AnimationController progress;
  Animation animation;

  @override
  void initState(){
    super.initState();
    progress = AnimationController(vsync: this, duration: Duration(milliseconds: 6000));

    animation = Tween<double>(begin: 0, end: 61).animate(progress)..addListener((){
      setState(() {
        load(context);
      });
    });
  }

  _launchTL() async {
    const url = 'tel:+1 833 462 7719';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future load(BuildContext context) {
    if(animation.value==61){
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        contentPadding: EdgeInsets.all(5.0),
        content: Container(
          height: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.height*.15 : MediaQuery.of(context).size.height*.35,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: Icon(Icons.error, size: 50,),
                ),

                Text("Device not found", style: TextStyle(
                  fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.035 :
                  MediaQuery.of(context).size.width*.015,
                  color: Colors.black,
                ),),
                Text("Network Error 305E78ext", style: TextStyle(
                  fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.035 :
                  MediaQuery.of(context).size.width*.015,
                  color: Colors.black,
                ),),
                GestureDetector(
                  onTap: _launchTL,
                  child: Text("Please call toll free: 1-833-462-7719", style: TextStyle(
                    fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width*.035 :
                    MediaQuery.of(context).size.width*.015,
                    color: Colors.black,
                  ),),
                )
              ],
            ),
          ),
        ),
        actions: <Widget>[
          FlatButton(onPressed: () {
            Navigator.of(context).pop();
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => last()
            ));
          }, child: Text("Ok"))
        ],
      );
    });
  }
  }

  @override
  Widget build(BuildContext context) {
    if(animation.value !=61){
      progress.forward();
    }
    return Scaffold(
      body: CustomPaint(
        foregroundPainter: CircleProgressBar(animation.value),
        child: GestureDetector(
          onTap: () {
            load(context);
          },
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("src/Bg_img.png"),
                    fit: BoxFit.cover)
            ),
            child: Center(child: Text("${animation.value.toInt()}%", style: TextStyle(
              fontSize: MediaQuery.of(context).size.width*.07,
              color: Colors.white,
            ),)),
          ),
        ),
      ),
    );
  }
}


