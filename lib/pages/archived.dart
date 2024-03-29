import 'package:flutter/material.dart';

import 'package:ui_flutter_whatsapp/constants.dart';
import 'package:ui_flutter_whatsapp/model/data.dart';
import 'package:ui_flutter_whatsapp/common/appbar.dart';
import 'package:ui_flutter_whatsapp/common/divider.dart';
import 'package:ui_flutter_whatsapp/common/chat_tile.dart';
import 'package:ui_flutter_whatsapp/common/rich_text.dart';
import 'package:ui_flutter_whatsapp/common/list_builder.dart';
import 'package:ui_flutter_whatsapp/common/popup_menu_button.dart';
import 'package:ui_flutter_whatsapp/services/handle_navigation.dart';

const data = Data();

class ArchivedPage extends StatelessWidget {
  const ArchivedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isChildWidget: true,
        title: 'Archived',
        actions: CustomPopupMenuButton(
          popupMenuItems: data.archivedPopupMenuItems,
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () => NavigationHelper.openRoute(
              context: context,
              pageRoute: '/chatsPage',
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                data.textData['archiveInfo']![0],
                textAlign: TextAlign.center,
                style: kInfoTextStyle,
              ),
            ),
          ),
          const CustomDivider(),
          CustomListBuilder(
            openChat: true,
            startIndex: 0,
            itemCount: data.conversaionList.length,
            list: data.conversaionList,
            returnWidgetType: ChatTile,
          ),
          const SizedBox(height: 5.0),
          const CustomDivider(),
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.lock,
                color: kSecondaryColor,
                size: 12.0,
              ),
              CustomRichText(
                textList: [
                  {
                    ' Your personal messages are ': kInfoTextStyle.copyWith(
                      color: const Color(0xff677680),
                      fontSize: 13.0,
                    ),
                    'end-to-end encrypted': kInfoTextStyle.copyWith(
                      color: kAccentColor,
                      fontSize: 13.0,
                    ),
                  }
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
