import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/formsWidget/emailForm.dart';
import 'package:myapp/pages/password.dart';
import 'package:myapp/pages/passwordVerificaton.dart';
import 'package:myapp/widgets/dash.dart';
import 'package:myapp/widgets/ourElevatedButton.dart';
import 'package:myapp/widgets/ourSizedbox.dart';

import '../constants.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgot Password",
          style: AppStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setSp(40),
            vertical: ScreenUtil().setSp(25),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter email",
                  style: bigWhite,
                ),
                OurSizedBox(),
                EmailForm(
                  controller: _controller,
                ),
                SizedBox(
                  height: ScreenUtil().setSp(550),
                ),
                OurElevatedButton(
                    title: "Next",
                    function: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return VerificationPass();
                        }));
                      }
                    }),
                Spacer(),
                Dash(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
