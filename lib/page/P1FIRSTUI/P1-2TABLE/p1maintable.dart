import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/BlocEvent/01-SAP.dart';
import '../../../bloc/cubit/NotificationEvent.dart';
import '../../../bloc/cubit/Rebuild.dart';
import '../../../data/model.dart';
import '../../../mainBody.dart';
import '../../../widget/common/ComInputText.dart';
import '../../../widget/common/Loading.dart';
import '../FIRSTuiVAR.dart';
import 'p1widgettablefield.dart';

class MAINTABLEP1 extends StatefulWidget {
  MAINTABLEP1({Key? key, this.sapdata}) : super(key: key);
  List<dataset>? sapdata;

  @override
  State<MAINTABLEP1> createState() => _MAINTABLEP1State();
}

class _MAINTABLEP1State extends State<MAINTABLEP1> {
  @override
  void initState() {
    super.initState();
    context.read<LOADSAP_Bloc>().add(LOADSAP_Pressed());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ComInputText(
                  isSideIcon: true,
                  height: 40,
                  width: 400,
                  isContr: FIRSTUI.iscontrol,
                  fnContr: (input) {
                    FIRSTUI.iscontrol = input;
                  },
                  sValue: FIRSTUI.SEARCH,
                  returnfunc: (String s) {
                    setState(() {
                      FIRSTUI.SEARCH = s;
                    });
                  },
                ),
                InkWell(
                  onTap: () {
                    onLoadingFAKE(context);
                    context.read<LOADSAP_Bloc>().add(LOADSAP_Pressed());
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.blueAccent,
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: const Center(
                      child: Text("RELOAD"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: P1WIDGETFIELD(
              height: 20,
              forntsize: 10,
              B01: 'PO NO.', //f1
              B02: 'CUS.', //f19
              B03: 'PART NAME.', //f17
              B04: 'PART NO.', //f16
              B05: 'QTY', //f9
              B06: 'TPK LOT.', //f30
              B07: 'INSPEC STD.', //--
              B08: 'ACTION',
              CB01: Colors.black54,
              CB02: Colors.black54,
              CB03: Colors.black54,
              CB04: Colors.black54,
              CB05: Colors.black54,
              CB06: Colors.black54,
              CB07: Colors.black54,
              CB08: Colors.black54,
              FCB: Colors.white,
            ),
          ),
          Expanded(
            flex: 46,
            child: SizedBox(
              child: tabledetailsearchlist(
                sapdata: widget.sapdata,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class tabledetailsearchlist extends StatelessWidget {
  tabledetailsearchlist({Key? key, this.sapdata}) : super(key: key);
  List<dataset>? sapdata;
  @override
  Widget build(BuildContext context) {
    List<dataset> _data = sapdata ?? [];
    List<dataset> _data_exp = [];
    print("----->");

    for (int i = 0; i < _data.length; i++) {
      if (_data[i].f01.contains(FIRSTUI.SEARCH) ||
          _data[i].f19.contains(FIRSTUI.SEARCH) ||
          _data[i].f17.contains(FIRSTUI.SEARCH) ||
          _data[i].f16.contains(FIRSTUI.SEARCH) ||
          _data[i].f30.contains(FIRSTUI.SEARCH)) {
        _data_exp.add(_data[i]);
      }
    }
    return tabledetailsearch(
      sapdata: _data_exp,
    );
  }
}

class tabledetailsearch extends StatelessWidget {
  tabledetailsearch({Key? key, this.sapdata}) : super(key: key);
  List<dataset>? sapdata;

  @override
  Widget build(BuildContext context) {
    List<dataset> _data_exp = sapdata ?? [];
    List<Widget> tableout = [];
    for (int i = 0; i < _data_exp.length; i++) {
      tableout.add(P1WIDGETFIELD(
        height: 45,
        B01: _data_exp[i].f01,
        B02: _data_exp[i].f19,
        B03: _data_exp[i].f17,
        B04: _data_exp[i].f16,
        B05: _data_exp[i].f09,
        B06: _data_exp[i].f30,
        B07: '',
        B08: '',
        B09: '',
        B10: '',
        B11: _data_exp[i].f06,
        B12: _data_exp[i].f07,
        isSELECTFUNC: true,
        SELECTFUNC: (PO, CP, FG) {
          print(PO);
          print(CP);
          print(FG);
        },
      ));
    }
    return tabledetailinside(
      tableout: tableout,
    );
  }
}

class tabledetailinside extends StatelessWidget {
  tabledetailinside({Key? key, this.tableout}) : super(key: key);
  List<Widget>? tableout;
  @override
  Widget build(BuildContext context) {
    List<Widget> _tableout = tableout ?? [];
    return SingleChildScrollView(
      child: SizedBox(
        height: _tableout.length * 45 + 35,
        child: Column(
          children: _tableout,
        ),
      ),
    );
  }
}


// List<Widget> tableout = [
//       P1WIDGETFIELD(
//         isSELECTFUNC: true,
//         SELECTFUNC: (input) {
//           FIRSTUI.INSCOUTTEST = 2;
//           contextGB.read<BlocPageRebuild>().rebuildPage();
//         },
//       ),
//       P1WIDGETFIELD(
//         isSELECTFUNC: true,
//         SELECTFUNC: (input) {
//           FIRSTUI.INSCOUTTEST = 3;
//           contextGB.read<BlocPageRebuild>().rebuildPage();
//         },
//       ),
//     ];