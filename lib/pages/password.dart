import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/formsWidget/passwordForm.dart';
import 'package:myapp/pages/forgotpassword.dart';
import 'package:myapp/widgets/dash.dart';
import 'package:myapp/widgets/ourElevatedButton.dart';
import 'package:myapp/widgets/ourSizedbox.dart';

import '../constants.dart';

class PasswordPage extends StatefulWidget {
  @override
  PasswordPageState createState() => PasswordPageState();
}

class PasswordPageState extends State<PasswordPage> {
  bool see = true;
  void changeSee() {
    setState(() {
      see = !see;
    });
  }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: AppStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setSp(40),
            vertical: ScreenUtil().setSp(20),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter password",
                  style: bigWhite,
                ),
                OurSizedBox(),
                PasswordForm(
                  see: see,
                  changesee: () {
                    changeSee();
                  },
                  controller: _controller,
                ),
                OurSizedBox(),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ForgotPassword();
                    }));
                  },
                  child: Text(
                    "Forgot password",
                    style: paratext,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setSp(550),
                ),
                OurElevatedButton(title: "Next", function: () {}),
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
