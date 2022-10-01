// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pc_setup_app/constants.dart';

class Prices {
  int gpu = 0;
  int cpu = 0;
  int ram = 0;
  int mobo = 0;
  int psu = 0;
  int pcCase = 0;
}

class SetupBudget extends StatelessWidget {
  const SetupBudget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Color(greyTextColor)),
          elevation: 0,
          backgroundColor: Color(backgroundColor),
          title: TextField(
            style: TextStyle(color: Color(greyTextColor)),
            decoration: InputDecoration(
              hintText: 'Setup Name',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(greyTextColor),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(greyTextColor),
                ),
              ),
            ),
            cursorColor: Color(greyTextColor),
          )),
      //TODO: On select TextField - change color
      body: Container(
        width: media.width,
        height: media.height,
        decoration: BoxDecoration(
          color: Color(backgroundColor),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
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
                PricesForm('GPU', 'assets/images/gpu.png'),
                PricesForm('CPU', 'assets/images/cpu.png'),
                PricesForm('RAM', 'assets/images/ram.png'),
                //TODO: Finish the rest of the widgets
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PricesForm extends StatelessWidget {
  String componentName = '';
  String imagePath = '';

  PricesForm(this.componentName, this.imagePath, {Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 15,
      ),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            color: Color(backgroundColor),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            componentName,
            style: TextStyle(color: Color(greyTextColor), fontSize: 20),
          ),
          Image(width: 50, height: 50, image: AssetImage(imagePath)),
          SizedBox(
            width: 100,
            child: TextField(
                cursorColor: Color(greyTextColor),
                style: TextStyle(color: Color(greyTextColor)),
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(greyTextColor),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(greyTextColor),
                      ),
                    ))),
          )
        ]),
      ),
    );
  }
}
