// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pc_setup_app/classes_constants/constants.dart';
import 'package:pc_setup_app/classes_constants/nextButton.dart';
import 'classes_constants/textfield.dart';

class CreateSetup extends StatelessWidget {
  const CreateSetup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        //TODO: Make the page scrollable for keyboard issue
        body: Container(
      height: media.height,
      width: media.width,
      decoration: BoxDecoration(color: Color(backgroundColor)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              //This is how I can change the size of logo
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(orangeButtonColor),
              ),
              child: Image(
                width: 70,
                height: 70,
                image: AssetImage('assets/images/card.png'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'What is your budget?',
              style: TextStyle(
                color: Color(greyTextColor),
                fontSize: 20,
              ),
            ),
            PricesForm('', 'assets/images/gpu.png', true),
            PricesForm('', 'assets/images/cpu.png', true),
            PricesForm('', 'assets/images/ram.png', true),
            PricesForm('', 'assets/images/mobo.png', true),
            PricesForm('', 'assets/images/psu.png', true),
            PricesForm('', 'assets/images/case.png', true),
            NextButton(10, 'compilingResults', greenButtonColor),
          ]),
    ));
  }
}
