

import 'package:flutter/material.dart';

 button (
{
  required String text ,
  required VoidCallback onPressed ,
  required Color bkgColor ,
  required Color txColor,
  required double width,


}

    ) => Center(
child: SizedBox(
height: 50,
width: width,
child: MaterialButton(
color: bkgColor,
onPressed:onPressed,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(25)),
child: Text(
      text,
style: TextStyle(
color: txColor,
fontSize: 20,
fontWeight: FontWeight.bold),
),
),
),
);

// () {
// Navigator.of(context).pushNamed('login');
// }