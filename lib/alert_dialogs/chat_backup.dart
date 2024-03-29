import 'package:flutter/material.dart';

import 'package:ui_flutter_whatsapp/constants.dart';
import 'package:ui_flutter_whatsapp/model/data.dart';
import 'package:ui_flutter_whatsapp/common/text_button.dart';
import 'package:ui_flutter_whatsapp/common/list_builder.dart';
import 'package:ui_flutter_whatsapp/common/radio_button.dart';

const data = Data();

class ChatBackupDialog extends StatelessWidget {
  const ChatBackupDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AlertDialog(
      backgroundColor: kAppBarColor,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      content: SizedBox(
        height: 345,
        width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10.0, top: 15.0, bottom: 5.0),
              child: Text(
                'Back up to Google Drive',
                style: TextStyle(
                  color: kTextPrimaryColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            CustomListBuilder(
              startIndex: 0,
              leadingIndent: 0.0,
              itemCount: data.chatBackupDialogOptions.length,
              list: data.chatBackupDialogOptions,
              returnWidgetType: CustomRadioButton,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                CustomTextButton(title: 'Cancel'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
