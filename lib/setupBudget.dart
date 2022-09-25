// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pc_setup_app/constants.dart';

class SetupBudget extends StatelessWidget {
  const SetupBudget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Color(greyTextColor)),
          elevation: 0,
          backgroundColor: Color(backgroundColor),
          title: TextField(
            decoration: InputDecoration(
              hintText: 'Setup Name',
            ),
            cursorColor: Color(greyTextColor),
          )),
      //TODO: On select TextField - change color
      body: Container(
        decoration: const BoxDecoration(
          color: Color(backgroundColor),
        ),
      ),
    );
  }
}
