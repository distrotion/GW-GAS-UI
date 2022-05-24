import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/cubit/NotificationEvent.dart';
import '../../../bloc/cubit/Rebuild.dart';
import '../../../mainBody.dart';
import '../FIRSTuiVAR.dart';
import 'p1widgettablefield.dart';

class MAINTABLEP1 extends StatelessWidget {
  const MAINTABLEP1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int max = 15;
    List<Widget> tableout = [
      P1WIDGETFIELD(
        isSELECTFUNC: true,
        SELECTFUNC: (input) {
          FIRSTUI.INSCOUTTEST = 2;
          contextGB.read<BlocPageRebuild>().rebuildPage();
        },
      ),
      P1WIDGETFIELD(
        isSELECTFUNC: true,
        SELECTFUNC: (input) {
          FIRSTUI.INSCOUTTEST = 3;
          contextGB.read<BlocPageRebuild>().rebuildPage();
        },
      ),
    ];
    for (int i = 2; i < max; i++) {
      tableout.add(P1WIDGETFIELD());
    }
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: P1WIDGETFIELD(
              height: 20,
            ),
          ),
          Expanded(
            flex: 46,
            child: Container(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: tableout.length * 35 + 35,
                  child: Column(
                    children: tableout,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
