import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

SvgPicture ScreenBackground(context){
  return SvgPicture.asset(
      "assets/images/screen_bg.svg",
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}


InputDecoration AppInputStyle(label){
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderSide:BorderSide(color: Colors.blue)
    ),
    fillColor: Colors.black12,
    filled: true,
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    enabledBorder:const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white,width: 0.0)
    ),
    border: OutlineInputBorder(),
    labelText: label,
  );
}

ButtonStyle AppBtnStyle(){
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4))
    ),
    foregroundColor: Colors.white,
  );
}

PinTheme AppPinThemeStyel(){
  return PinTheme(
    inactiveColor: Colors.black12,
    inactiveFillColor: Colors.white10,

    // activeFillColor: Colors.green,
    // activeColor: Colors.green,
    // selectedFillColor: Colors.blue,
    // selectedColor: Colors.blue,

    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(5),
    fieldHeight: 50,
    fieldWidth: 40,
    borderWidth: 0.5,

  );
}


void showSuccessToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.green.shade600,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

void showErrorToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.red.shade600,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
