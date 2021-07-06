import 'package:flutter/material.dart';
import 'package:myapp/widgets/ourElevatedButton.dart';

class SignInpage extends StatefulWidget {

  @override
  _SignInpageState createState() => _SignInpageState();
}

class _SignInpageState extends State<SignInpage> {
  bool see = false;
  void change() {
    setState(() {
      see = !see;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter password",
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.15,
                child: Container(
                  color: Colors.red,
                ),
              ),
              OurElevatedButton(title: "Next", function: () {})
            ],
          ),
        ),
      ),
    );
  }
}
