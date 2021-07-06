import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constants.dart';

class EmailForm extends StatelessWidget {
  final TextEditingController controller;
  const EmailForm({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (String value) {
        if (value.isNotEmpty || value.contains("@")) {
          return null;
        } else {
          return "Invalid email";
        }
      },
      style: TextStyle(fontSize: ScreenUtil().setSp(50)),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Email",
          labelStyle: paratext,
          errorStyle: TextStyle(
            fontSize: ScreenUtil().setSp(
              40,
            ),
          )),
    );
  }
}
