// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pc_setup_app/classes_constants/constants.dart';
import 'classes_constants/textfield.dart';

class ViewSetup extends StatelessWidget {
  const ViewSetup({Key? key}) : super(key: key);

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
                PricesForm('GPU', 'assets/images/gpu.png', false),
                PricesForm('CPU', 'assets/images/cpu.png', false),
                PricesForm('RAM', 'assets/images/ram.png', false),
                PricesForm('MOBO', 'assets/images/mobo.png', false),
                PricesForm('PSU', 'assets/images/psu.png', false),
                PricesForm('CASE', 'assets/images/case.png', false),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
