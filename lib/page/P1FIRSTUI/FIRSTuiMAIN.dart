import 'package:flutter/material.dart';

import 'P1-2TABLE/p1maintable.dart';
import 'P1-3INSTRUMENT/p1mainseins.dart';

late BuildContext FIRSTUIMAINcontext;

class FIRSTUIMAIN extends StatelessWidget {
  const FIRSTUIMAIN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FIRSTUIMAINcontext = context;
    return FIRSTUIMAINbody();
  }
}

class FIRSTUIMAINbody extends StatelessWidget {
  const FIRSTUIMAINbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxwidth = 850;
    double maxheight = 450;
    return Container(
      width: maxwidth,
      height: maxheight,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: const BorderRadius.all(Radius.circular(0)),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(
                        top: 2, bottom: 1, start: 2, end: 2),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(0)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(
                        top: 1, bottom: 2, start: 2, end: 1),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(0)),
                      ),
                      child: MAINTABLEP1(),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                  top: 2, bottom: 2, start: 1, end: 2),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(0)),
                ),
                child: SELECtINSTRUMENT(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
