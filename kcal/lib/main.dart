import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/splash.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
