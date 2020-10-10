import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:progress_hud/progress_hud.dart';

final String tableUser   = 'user';
final String columnId    = '_id';
final String columnName  = 'name';
final String columnPhone = 'phone';
final String columnEmail = 'email';

showtoast(String string) {
  Fluttertoast.showToast(
      msg: "$string",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey[800],
      textColor: Colors.white,
      fontSize: 16.0);
}

showProgress() {
  return ProgressHUD(
    backgroundColor: Colors.black12,
    color: Colors.white,
    containerColor: Colors.black38,
    borderRadius: 5.0,
    text: 'Loading...',
  );
}

/// Validation Check
String validateName(String value) {
  if (value.length < 3)
    return 'Name must be more than 2 charater';
  else if (value.length > 30) {
    return 'Name must be less than 30 charater';
  } else
    return null;
}

String validateMobile(String value) {
  Pattern pattern = r'^[0-9]*$';
  RegExp regex = new RegExp(pattern);
  if (value.trim().length != 10)
    return 'Mobile Number must be of 10 digit';
  else if (value.startsWith('+', 0)) {
    return 'Mobile Number should not contain +91';
  } else if (value.trim().contains(" ")) {
    return 'Blank space is not allowed';
  } else if (!regex.hasMatch(value)) {
    return 'Characters are not allowed';
  } else
    return null;
}

String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter Valid Email';
  else if (value.length > 30) {
    return 'Email length exceeds';
  } else
    return null;
}