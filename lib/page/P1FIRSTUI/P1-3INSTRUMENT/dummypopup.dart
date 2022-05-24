import 'package:flutter/material.dart';

import '../FIRSTuiMAIN.dart';

void INSConsoleBox() {
  showDialog(
    context: FIRSTUIMAINcontext,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return INSBODY();
    },
  );
}

class INSBODY extends StatefulWidget {
  const INSBODY({Key? key}) : super(key: key);

  @override
  State<INSBODY> createState() => _INSBODYState();
}

class _INSBODYState extends State<INSBODY> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 800,
        height: 450,
        color: Colors.white,
      ),
    );
  }
}
