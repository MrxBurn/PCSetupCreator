// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';

class PricesForm extends StatelessWidget {
  String componentName = '';
  String imagePath = '';
  bool isEnabled;
  PricesForm(this.componentName, this.imagePath, this.isEnabled, {Key? key})
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
                enabled: isEnabled,
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
