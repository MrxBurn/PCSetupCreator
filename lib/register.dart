// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, unnecessary_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pc_setup_app/constants.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('PC Setup Creator'),
        backgroundColor: Color(backgroundColor),
      ),
      body:
          //This is how you scroll page when keyboard is opened
          SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        reverse: true,
        child: Container(
          width: media.width,
          height: media.height,
          decoration: BoxDecoration(color: Color(backgroundColor)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image(
                width: 157,
                height: 157,
                image: AssetImage('assets/images/mouse.png'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Register',
                style: TextStyle(color: Color(greyTextColor), fontSize: 40),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            //Call custom function
            Form('First Name'),
            Form('Email'),
            Form('Password'),

            SizedBox(
              height: 30,
            ),
            Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(orangeButtonColor)),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'home');
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    ))),
          ]),
        ),
      ),
    );
  }
}

//Class for form
class Form extends StatefulWidget {
  String formField = '';

  Form(this.formField, {Key? key}) : super(key: key);

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              widget.formField,
              style: TextStyle(
                  color: Color(greenButtonColor).withOpacity(0.8),
                  fontSize: 15),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
          child: SizedBox(
            width: 300,
            height: 50,
            child: TextField(
              style: TextStyle(
                color: Color(backgroundColor),
                fontWeight: FontWeight.bold,
              ),
              cursorColor: Color(0xff202C39),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(greyTextColor), width: 0)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(greyTextColor), width: 2)),
                  fillColor: Color(greyTextColor),
                  filled: true,
                  //This is how you change heigh of TextField
                  isDense: true,
                  contentPadding: EdgeInsets.all(5)),
            ),
          ),
        ),
      ],
    );
  }
}
