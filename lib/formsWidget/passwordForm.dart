import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class PasswordForm extends StatelessWidget {
  final bool? see;
  final Function? changesee;
  final String? title;
  final TextEditingController? controller;

  const PasswordForm(
      {Key? key, this.see, this.changesee, this.controller, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) {
          if (value!.trim().isEmpty) {
            return "Can't be empty";
          } else {
            return null;
          }
        },
        style: TextStyle(fontSize: ScreenUtil().setSp(50)),
        controller: controller,
        obscureText: see!,
        decoration: InputDecoration(
          suffixIcon: InkWell(
              onTap: () {
                changesee!();
              },
              child: !see!
                  ? Icon(
                      Icons.visibility_off,
                      color: Color(0xff7C37FA),
                      size: ScreenUtil().setSp(80),
                    )
                  : (Icon(
                      Icons.visibility,
                      color: Color(0xff7C37FA),
                      size: ScreenUtil().setSp(80),
                    ))),
          border: OutlineInputBorder(),
          labelText: title,
          labelStyle: paratext,
          errorStyle: TextStyle(
            fontSize: ScreenUtil().setSp(
              40,
            ),
          ),
        ));
  }
}
