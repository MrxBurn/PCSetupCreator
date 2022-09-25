// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pc_setup_app/register.dart';
import 'package:pc_setup_app/setupBudget.dart';
import 'login.dart';
import 'home.dart';
import 'constants.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'RobotoMono',
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        'login': ((context) => Login()),
        'welcome': (context) => StartPage(),
        'home': ((context) => HomePage()),
        'register': ((context) => Register()),
        //TODO: add the loading screen after login/register
        'setupBudget': (((context) => SetupBudget()))
      },
      home: StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('PC Setup Creator'),
        backgroundColor: Color(backgroundColor),
      ),
      body: Container(
        width: media.width,
        decoration: BoxDecoration(
          color: Color(backgroundColor),
        ),
        child: Column(
          children: [
            SizedBox(
              height: media.height / 4,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 147,
                  height: 146,
                  //With this I can now change the size of logo
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(orangeButtonColor),
                    shape: BoxShape.circle,
                  ),
                  child: Image(
                    height: 93,
                    width: 93,
                    image: AssetImage(
                      'assets/images/logo.png',
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: media.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Color(greyTextColor).withOpacity(0.2),
                ),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Text(
                            'Welcome!',
                            style: TextStyle(
                                fontSize: 40, color: Color(greyTextColor)),
                          ),
                        )),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Text(
                            'PC Setup Creator',
                            style: TextStyle(
                                fontSize: 27, color: Color(greyTextColor)),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 160),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(greenButtonColor)),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, 'login');
                              },
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
