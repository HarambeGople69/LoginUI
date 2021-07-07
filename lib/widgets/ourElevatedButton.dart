import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurElevatedButton extends StatelessWidget {
  final String? title;
  final Function? function;
  const OurElevatedButton({Key? key,required this.title,required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Color(0xff7C37FA),
            ),
          ),
          onPressed: () {
            function!();
          },
          child: Text(
            title!,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(60),
            ),
          )),
    );
  }
}
