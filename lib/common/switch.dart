import 'package:flutter/material.dart';

import '../constants.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    super.key,
  });

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      thumbColor: switchValue == true ? kThumbActiveColor : kThumbInctiveColor,
      trackColor: switchValue == true ? kTrackActiveColor : kTrackInctiveColor,
      value: switchValue,
      onChanged: (p0) => setState(() {
        switchValue = p0;
      }),
    );
  }
}