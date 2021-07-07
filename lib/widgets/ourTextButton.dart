import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurTextButton extends StatelessWidget {
  final String? title;
  final Function? function;
  const OurTextButton({Key? key, this.title, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          function!();
        },
        child: Text(
          title!,
          style: TextStyle(
            color: Color(0xff7C37FA),
            fontSize: ScreenUtil().setSp(60),
          ),
        ));
  }
}
