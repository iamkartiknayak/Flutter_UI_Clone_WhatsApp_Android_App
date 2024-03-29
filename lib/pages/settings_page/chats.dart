import 'package:flutter/material.dart';

import 'package:ui_flutter_whatsapp/model/data.dart';
import 'package:ui_flutter_whatsapp/common/appbar.dart';
import 'package:ui_flutter_whatsapp/common/switch.dart';
import 'package:ui_flutter_whatsapp/common/divider.dart';
import 'package:ui_flutter_whatsapp/common/list_tile.dart';
import 'package:ui_flutter_whatsapp/common/list_builder.dart';
import 'package:ui_flutter_whatsapp/common/padded_settings_textinfo.dart';

const data = Data();

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isChildWidget: true,
        title: 'Chats',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PaddedSettingsTextInfo(text: 'Display'),
          CustomListBuilder(
            startIndex: 0,
            itemCount: 2,
            list: data.chatOptions,
            returnWidgetType: CustomListTile,
          ),
          const SizedBox(height: 10.0),
          const CustomDivider(),
          const PaddedSettingsTextInfo(text: 'Chat settings'),
          CustomListBuilder(
            startIndex: 0,
            padding: const EdgeInsets.only(left: 50.0, bottom: 10.0),
            itemCount: data.chatSettings.length,
            list: data.chatSettings,
            returnWidgetType: CustomListTile,
          ),
          const CustomDivider(),
          const PaddedSettingsTextInfo(text: 'Archived chats'),
          const CustomListTile(
            padding: EdgeInsets.only(left: 60.0, top: 15.0, bottom: 10.0),
            title: 'Keep chats archived',
            subTitle:
                'Archived chats will remain archived when you receive a new message',
            subTitleIndent: 160,
            trailing: CustomSwitch(),
          ),
          const SizedBox(height: 15.0),
          const CustomDivider(),
          const SizedBox(height: 15.0),
          CustomListBuilder(
            itemCount: data.chatOptions.length - 2,
            list: data.chatOptions,
            startIndex: 2,
            returnWidgetType: CustomListTile,
          ),
        ],
      ),
    );
  }
}
