import 'package:flutter/material.dart';

import 'getStarted.dart';

void main() {
  runApp(splashScreen());
}

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToGetStarted();
  }

  _navigateToGetStarted() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => getStarted()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[700],
        body: Container(
          child: Stack(
            children: [
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Kcal",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 64,
                    ),
                  ),
                  SizedBox(
                    child: Text(
                      "Zuamica",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  )
                ],
              )),
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}
