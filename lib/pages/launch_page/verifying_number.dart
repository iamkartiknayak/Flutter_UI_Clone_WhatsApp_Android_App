import 'dart:async';
import 'package:flutter/material.dart';

import 'package:ui_flutter_whatsapp/common/appbar.dart';
import 'package:ui_flutter_whatsapp/common/popup_menu_button.dart';
import 'package:ui_flutter_whatsapp/common/rich_text.dart';
import 'package:ui_flutter_whatsapp/common/text_field.dart';
import 'package:ui_flutter_whatsapp/constants.dart';

class VerifyingNumberPage extends StatefulWidget {
  const VerifyingNumberPage({
    super.key,
    required this.number,
    required this.type,
  });

  final String number;
  final String type;

  @override
  State<VerifyingNumberPage> createState() => _VerifyingNumberPageState();
}

class _VerifyingNumberPageState extends State<VerifyingNumberPage> {
  var timeString = '1:05';
  var hintText = '-';

  void countdown(Duration duration) {
    int remainingSeconds = duration.inSeconds;

    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        timeString =
            '${remainingSeconds ~/ 60}:${(remainingSeconds % 60).toString().padLeft(2, '0')}';
      });
      remainingSeconds--;

      if (remainingSeconds == 59) {
        setState(() {
          hintText = '•';
        });
      }

      if (remainingSeconds < 58) {
        timer.cancel();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    countdown(const Duration(seconds: 64));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const CustomAppBar(
        isChildWidget: false,
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: 'Verifying your number',
        actions: CustomPopupMenuButton(
          popupMenuItems: {},
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20.0),
          widget.type == 'call'
              ? Column(
                  children: [
                    Center(
                      child: Text(
                        'Waiting to automatically detect a phone call made to',
                        style: kSubTitleTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 14.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      '+91 ${widget.number}',
                      style: kSubTitleTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Text(
                      'Did not receive code?',
                      style: kSubTitleTextStyle.copyWith(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomRichText(
                      textList: [
                        {
                          'You may request a new code in ':
                              kSubTitleTextStyle.copyWith(
                            fontSize: 14.0,
                            height: 1.4,
                          ),
                          timeString: kSubTitleTextStyle.copyWith(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          )
                        }
                      ],
                    ),
                  ],
                )
              : Column(
                  children: [
                    CustomRichText(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      textAlign: TextAlign.center,
                      textList: [
                        {
                          'Waiting to automatically detect an SMS sent to ':
                              kSubTitleTextStyle.copyWith(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                          '+91 ${widget.number}. ': kSubTitleTextStyle.copyWith(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.5,
                          ),
                          'Wrong number?': kSubTitleTextStyle.copyWith(
                            color: kTextLinkColor,
                            fontSize: 14.0,
                          ),
                        }
                      ],
                    ),
                    SizedBox(
                      width: screenWidth / 2.0,
                      child: CustomTextField(
                        textAlign: TextAlign.center,
                        borderColor: kAccentColor,
                        hintText:
                            '$hintText $hintText $hintText  $hintText $hintText $hintText',
                        hintStyle: const TextStyle(
                            color: kSecondaryColor,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            height: 2.0),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Text(
                      'Enter 6-digit code',
                      style: kSubTitleTextStyle.copyWith(fontSize: 14.5),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      'Did not receive code?',
                      style: kSubTitleTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
        ],
      ),
    );
  }
}
