import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/pages/setuppassword.dart';
import 'package:myapp/widgets/dash.dart';
import 'package:myapp/widgets/ourElevatedButton.dart';
import 'package:myapp/widgets/ourSizedbox.dart';

class VerificationPass extends StatefulWidget {
  @override
  VerificationPassState createState() => VerificationPassState();
}

class VerificationPassState extends State<VerificationPass> {
  final FocusNode f1 = FocusNode();
  final FocusNode f2 = FocusNode();
  final FocusNode f3 = FocusNode();
  final FocusNode f4 = FocusNode();
  final FocusNode f5 = FocusNode();
  final FocusNode f6 = FocusNode();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();
  TextEditingController _controller5 = TextEditingController();
  TextEditingController _controller6 = TextEditingController();

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
            vertical: ScreenUtil().setSp(25),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter verify code",
                  style: bigWhite,
                ),
                OurSizedBox(),
                Text(
                  "A verify code has been sent to\nlalala@hotmail.com",
                  style: paratext,
                ),
                OurSizedBox(),
                Row(
                  children: [
                    OurTextField(f1, f2, _controller1),
                    OurTextField(f2, f3, _controller2),
                    OurTextField(f3, f4, _controller3),
                    Icon(
                      Icons.remove,
                      size: ScreenUtil().setSp(60),
                    ),
                    OurTextField(f4, f5, _controller4),
                    OurTextField(f5, f6, _controller5),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setSp(
                          7,
                        ),
                        vertical: ScreenUtil().setSp(10),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(ScreenUtil().setSp(40)),
                        color: Color(0xff121624),
                      ),
                      alignment: Alignment.center,
                      child: Center(
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return " ";
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(fontSize: ScreenUtil().setSp(50)),
                          focusNode: f6,
                          controller: _controller6,
                          maxLength: 1,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              counterText: "",
                              contentPadding: EdgeInsets.only(
                                left: ScreenUtil().setSp(60),
                              ),
                              fillColor: Color(0xff121624),
                              border: InputBorder.none),
                        ),
                      ),
                    ))
                  ],
                ),
                OurSizedBox(),
                Text(
                  "Please try 29s later",
                  style: paratext,
                ),
                SizedBox(
                  height: ScreenUtil().setSp(400),
                ),
                OurElevatedButton(
                    title: "Next",
                    function: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SetupPassword();
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

  OurTextField(FocusNode s, FocusNode f, TextEditingController controller) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setSp(
          7,
        ),
        vertical: ScreenUtil().setSp(10),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ScreenUtil().setSp(40)),
        color: Color(0xff121624),
      ),
      alignment: Alignment.center,
      child: Center(
        child: TextFormField(
          validator: (value) {
            if (value.isEmpty) {
              return " ";
            } else {
              return null;
            }
          },
          focusNode: s,
          controller: controller,
          onEditingComplete: () {
            FocusScope.of(context).requestFocus(f);
          },
          maxLength: 1,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.number,
          style: TextStyle(fontSize: ScreenUtil().setSp(50)),
          decoration: InputDecoration(
              // counter: Container()

              counterText: "",
              contentPadding: EdgeInsets.only(
                left: ScreenUtil().setSp(60),
              ),
              fillColor: Color(0xff121624),
              border: InputBorder.none),
        ),
      ),
    ));
  }
}
