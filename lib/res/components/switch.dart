import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class swtch extends StatefulWidget {
  const swtch({Key? key}) : super(key: key);

  @override
  _swtchState createState() => _swtchState();
}

class _swtchState extends State<swtch> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.6,
      child: CupertinoSwitch(
        value: _switchValue,
        onChanged: (value) {
          setState(() {
            _switchValue = value;
          });
        },
      ),
    );
  }
}
