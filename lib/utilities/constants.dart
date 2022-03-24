import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
dynamic kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 70.0.sp,
);

dynamic kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 40.0.sp,
);

dynamic kButtonTextStyle = TextStyle(
  fontSize: 30.0.sp,
  fontFamily: 'Spartan MB',
);

dynamic kConditionTextStyle = TextStyle(
  fontSize: 70.0.sp
);
const kTextFieldInputDecoration=InputDecoration(
    filled: true,
    fillColor: Colors.white,
    icon: Icon(
      Icons.location_city,
      color: Colors.white,
    ),
    hintText: 'Enter City Name',
    hintStyle: TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide.none,
    )
);