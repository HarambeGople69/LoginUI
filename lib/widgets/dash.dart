import 'package:flutter/material.dart';

class Dash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 3,
        width: MediaQuery.of(context).size.width * 0.6,
        color: Colors.white,
      ),
    );
  }
}
