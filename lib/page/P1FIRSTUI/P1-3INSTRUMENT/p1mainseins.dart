import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/cubit/NotificationEvent.dart';
import '../../../bloc/cubit/Rebuild.dart';

import '../../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../../data/global.dart';
import '../../../mainBody.dart';
import '../../page2.dart';
import '../FIRSTuiVAR.dart';
import 'dummypopup.dart';
import 'p1instrument.dart';

class SELECtINSTRUMENT extends StatelessWidget {
  const SELECtINSTRUMENT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int maxins = FIRSTUI.INSCOUTTEST;
    List<Widget> INSOUTPUT = [];
    for (int i = 0; i < maxins; i++) {
      INSOUTPUT.add(Padding(
        padding: EdgeInsets.all(4.0),
        child: InkWell(
          onTap: () {
            // INSConsoleBox();
            CuPage = Page2();
            CuPageLV = 1;
            MainBodyContext.read<ChangePage_Bloc>().add(ChangePage_nodrower());
          },
          child: INSBOX(
            INS: ' INS ${i + 1}',
          ),
        ),
      ));
    }
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: INSOUTPUT,
        ),
      ),
    );
  }
}
