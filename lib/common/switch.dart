import 'package:flutter/material.dart';

import 'package:ui_flutter_whatsapp/constants.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    super.key,
    this.onChanged,
    this.isEnabled,
  });

  final Function(bool?)? onChanged;
  final bool? isEnabled;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: kAccentColor,
      inactiveThumbColor: const Color(0xff82939d),
      inactiveTrackColor: const Color(0xff334048),
      activeTrackColor: const Color(0xff0d463f),
      value: widget.isEnabled ?? switchValue,
      onChanged: widget.onChanged ??
          (p0) => setState(() {
                switchValue = p0;
              }),
    );
  }
}
