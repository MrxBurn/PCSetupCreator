// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pc_setup_app/constants.dart';
import 'setup.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Center(
            child: Text(
              'Setups',
              style: TextStyle(fontSize: 35),
            ),
          ),
          backgroundColor: Color(0xff202C39),
        ),
        body: Home());
  }
}

//Homepage widget
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Variables
  List<Setup> setups = [];

  String noSetup = '';
  @override
  void initState() {
    super.initState();
    if (setups.isEmpty) {
      noSetup = 'Currently there are no setups'
          '\n'
          'Tap "+" to create one';
    } else {
      noSetup = 'SETUP1 2 3';
    }
  }

  @override
  Widget build(BuildContext context) {
    //Variables
    var media = MediaQuery.of(context).size;
    return setups.isEmpty
        ? Container(
            width: media.width,
            height: media.height,
            decoration: BoxDecoration(
              color: Color(backgroundColor),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(greyTextColor).withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    noSetup,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(greyTextColor)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(orangeButtonColor),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('setupBudget');
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            ),
          )
        : Container(
            width: media.width,
            height: media.height,
            decoration: BoxDecoration(color: Color(backgroundColor)),
            child: Column(
              children: [
                Text(
                  noSetup,
                  textAlign: TextAlign.center,
                ),
              ],
            ));
  }
}
