import 'package:flutter/material.dart';

class INSBOX extends StatelessWidget {
  INSBOX({Key? key, this.INS}) : super(key: key);
  String? INS;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.blue,
      child: Center(
        child: Text(INS ?? ''),
      ),
    );
  }
}
