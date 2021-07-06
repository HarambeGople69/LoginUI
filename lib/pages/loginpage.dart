import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/pages/signin.dart';
import 'package:myapp/widgets/ourElevatedButton.dart';
import 'package:myapp/widgets/ourTextButton.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TapGestureRecognizer OnTap = TapGestureRecognizer()
    ..onTap = () {
      print("Its tapped");
    };
  bool see = true;
  void changeSee() {
    setState(() {
      see = !see;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                OutlinedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(CircleBorder())),
                    onPressed: () {
                      changeSee();
                    },
                    child: see
                        ? Icon(null)
                        : Icon(
                            Icons.check,
                            color: Color(0xff7C37FA),
                          )),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'I have read and agreed on',
                          style: paratext,
                        ),
                        TextSpan(
                          text: ' Terms of Service and Privacy policy',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => print("sdf"),
                          style: TextStyle(
                            color: Color(0xff7C37FA),
                            fontSize: ScreenUtil().setSp(50),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: double.infinity,
                child: OurElevatedButton(
                    title: "Sign up",
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignInpage();
                      }));
                    })),
            SizedBox(
              height: 20,
            ),
            OurTextButton(
                title: "Sign in",
                function: () {
                  print("Sign in");
                }),
          ],
        ),
      ),
    );
  }
}
