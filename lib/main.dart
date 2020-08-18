import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyApp(),
    ),
  );
  FlutterStatusbarcolor.setStatusBarColor(Colors.red);
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      
      title: new Text(
        'No brokarage amount',
        style: new TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15.0,
            color: Colors.red.shade300),
      ),
      seconds: 8,
      navigateAfterSeconds: AfterSplash(),
      image: new Image.asset('images/RENANT.gif'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 170.0,
      loadingText: Text("Finding the best for you" , style: TextStyle(color:Colors.red.shade200),),
      loaderColor: Colors.red,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
    
        title: Text("RENANT"),
        leading: Icon(Icons.menu),
        elevation: 0,
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    "Welcome To Renant",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
