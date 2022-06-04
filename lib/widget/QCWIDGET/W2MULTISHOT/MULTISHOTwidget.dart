import 'package:flutter/material.dart';

import '../../../styles/TextStyle.dart';

import '../../common/Easydropdown.dart';
import '../consolelayout.dart';

class MULTISHOTmain extends StatelessWidget {
  MULTISHOTmain({
    Key? key,
    this.PO,
    this.CP,
    this.QTY,
    this.PROCESS,
    this.CUSLOT,
    this.TPKLOT,
    this.FG,
    this.CUSTOMER,
    this.PART,
    this.PARTNAME,
    this.MATERIAL,
  }) : super(key: key);
  String? PO;
  String? CP;
  String? QTY;
  String? PROCESS;
  String? CUSLOT;
  String? TPKLOT;
  String? FG;
  String? CUSTOMER;
  String? PART;
  String? PARTNAME;
  String? MATERIAL;

  @override
  Widget build(BuildContext context) {
    return SINGLESHITLAYOUT(
      cocover: Colors.green,
      PO: PO ?? '',
      CP: CP ?? '',
      QTY: QTY ?? '',
      PROCESS: PROCESS ?? '',
      CUSLOT: CUSLOT ?? '',
      TPKLOT: TPKLOT ?? '',
      FG: FG ?? '',
      CUSTOMER: CUSTOMER ?? '',
      PART: PART ?? '',
      PARTNAME: PARTNAME ?? '',
      MATERIAL: MATERIAL ?? '',
      childBOT: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            color: Colors.blue,
                            child: const Center(
                              child: Text("ACCEPT",
                                  style: TxtStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: const Center(
                              child: Text("FINISH",
                                  style: TxtStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.grey,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(0)),
                          ),
                          child: const Text(
                            "Preview value",
                            style: TxtStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _tabtable(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.grey,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(0)),
                          ),
                          child: const Text(
                            "Value",
                            style: TxtStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _tabtable(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      childTOP: [
        _topboxfull(
          outfn: (input) {
            print(input);
          },
          dropdown: const ["", "1", "2"],
        )
      ],
      childRIGHT: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 40,
                  color: Colors.blue,
                  child: const Center(
                    child: Text("BACK PAGE",
                        style: TxtStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 40,
                  color: Colors.red,
                  child: const Center(
                    child: Text("RESET VALUE",
                        style: TxtStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 25,
                  color: Colors.grey,
                  child: _tabtable(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: SizedBox(
                  height: 125,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _tabtable(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 25,
                  color: Colors.grey,
                  child: _tabtable(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: SizedBox(
                  height: 125,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _tabtable(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _tabtable extends StatelessWidget {
  const _tabtable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _topboxfull extends StatefulWidget {
  _topboxfull({
    Key? key,
    required this.outfn,
    required this.dropdown,
    this.PCS,
  }) : super(key: key);
  Function outfn;
  List<String> dropdown;
  String? PCS;
  String? POINTS;

  @override
  State<_topboxfull> createState() => __topboxfullState();
}

class __topboxfullState extends State<_topboxfull> {
  String show = '';
  @override
  Widget build(BuildContext context) {
    Function _outfn = widget.outfn;
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Container(
                height: 38,
                width: 100,
                color: Colors.blueGrey,
                child: const Center(
                  child: Text('FINAL'),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              EasyDropDown(
                borderRaio: 0,
                imgpath: 'assets/icons/icon-down_4@3x.png',
                listdropdown: widget.dropdown,
                onChangeinside: (d) {
                  setState(() {
                    show = d;
                    _outfn(d);
                  });
                },
                value: show,
                height: 38,
                width: 200,
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 38,
                width: 100,
                child: Row(
                  children: [
                    const Expanded(flex: 1, child: Text('PCS')),
                    Expanded(flex: 2, child: Text(widget.PCS ?? '')),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              SizedBox(
                height: 38,
                width: 200,
                child: Row(
                  children: [
                    const Expanded(flex: 2, child: Text('PSC left')),
                    Expanded(flex: 1, child: Text(widget.PCS ?? '')),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 38,
                width: 200,
                child: Row(
                  children: [
                    const Expanded(flex: 2, child: Text('UNIT')),
                    Expanded(flex: 1, child: Text(widget.PCS ?? '')),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              SizedBox(
                height: 38,
                width: 200,
                child: Row(
                  children: [
                    const Expanded(flex: 2, child: Text('Gh type')),
                    Expanded(flex: 1, child: Text(widget.PCS ?? '')),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 38,
                width: 200,
                child: Row(
                  children: [
                    const Expanded(flex: 1, child: Text('Intersec @')),
                    Expanded(flex: 1, child: Text(widget.PCS ?? '')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
