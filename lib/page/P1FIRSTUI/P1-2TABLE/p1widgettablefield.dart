import 'package:flutter/material.dart';

class P1WIDGETFIELD extends StatefulWidget {
  P1WIDGETFIELD({
    Key? key,
    this.height,
    this.SELECTFUNC,
    this.isSELECTFUNC,
  }) : super(key: key);
  double? height;
  Function? SELECTFUNC;
  bool? isSELECTFUNC;

  @override
  State<P1WIDGETFIELD> createState() => _P1WIDGETFIELDState();
}

class _P1WIDGETFIELDState extends State<P1WIDGETFIELD> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: widget.height ?? 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: widget.height ?? 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              height: widget.height ?? 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: widget.height ?? 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: widget.height ?? 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: widget.height ?? 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: widget.height ?? 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: widget.height ?? 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: widget.height ?? 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
              child: widget.isSELECTFUNC ?? false
                  ? Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          widget.SELECTFUNC!("ok") ?? () {};
                        },
                        child: Container(
                          color: Colors.blue,
                          child: const Center(
                            child: Text("SELECT"),
                          ),
                        ),
                      ),
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
