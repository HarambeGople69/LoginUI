import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(1080, 1920),
        builder: () {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                fontFamily: "inter",
                brightness: Brightness.dark,
                appBarTheme: AppBarTheme(
                  color: Colors.transparent,
                  elevation: 0,
                ),
                
                scaffoldBackgroundColor: Color(0xff090622)),
            home: LoginPage(),
          );
        });
  }
}
