import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kcal/model/slide.dart';
import 'package:kcal/widgets/slide_dots.dart';
import 'package:kcal/widgets/slide_item.dart';
import 'dart:async';
import 'favorites.dart';
import 'splash.dart';

void main() {
  runApp(MaterialApp(
    home: splashScreen(),
  ));
}

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: getStarted(),
    );
  }
}

class getStarted extends StatefulWidget {
  @override
  _getStartedState createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  SizedBox(
                    child: Text(
                      "Kcal",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green[800],
                        fontSize: 28,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 600,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: <Widget>[
                        PageView.builder(
                          scrollDirection: Axis.horizontal,
                          onPageChanged: _onPageChanged,
                          controller: _pageController,
                          itemCount: slideList.length,
                          itemBuilder: (context, i) => SlideItem(i),
                        ),
                        Stack(
                          alignment: AlignmentDirectional.topStart,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(bottom: 35),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  for (int i = 0; i < slideList.length; i++)
                                    if (i == _currentPage)
                                      SlideDots(true)
                                    else
                                      SlideDots(false)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => favoriteScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Getting Started",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffFE9286)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("have an account?"),
                      TextButton(
                        onPressed: () {},
                        child: Text("Login"),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
