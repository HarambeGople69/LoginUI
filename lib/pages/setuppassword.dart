import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/formsWidget/passwordForm.dart';
import 'package:myapp/widgets/dash.dart';
import 'package:myapp/widgets/ourElevatedButton.dart';
import 'package:myapp/widgets/ourSizedbox.dart';

import 'forgotpassword.dart';

class SetupPassword extends StatefulWidget {
  @override
  _SetupPasswordState createState() => _SetupPasswordState();
}

class _SetupPasswordState extends State<SetupPassword> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _repasswordController = TextEditingController();
  bool see = true;
  void changeSee() {
    setState(() {
      see = !see;
    });
  }

  bool see1 = true;
  void changeSee1() {
    setState(() {
      see1 = !see1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot password',
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Setup a password",
                  style: bigWhite,
                ),
                OurSizedBox(),
                PasswordForm(
                  see: see,
                  title: "Enter Password",
                  controller: _passwordcontroller,
                  changesee: () {
                    changeSee();
                  },
                ),
                OurSizedBox(),
                PasswordForm(
                  
                  see: see1,
                  title: "Re-enter new Password",
                  controller: _repasswordController,
                  changesee: () {
                    changeSee1();
                  },
                ),
                OurSizedBox(),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return ForgotPassword();
                    }));
                  },
                  child: Text(
                    "Forgot password",
                    style: paratext,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setSp(250),
                ),
                OurElevatedButton(
                    title: "Next",
                    function: () {
                      
                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (context) {
                      //       return
                      //     }));
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
