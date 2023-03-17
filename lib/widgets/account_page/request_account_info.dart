import 'package:flutter/material.dart';
import 'package:ui_flutter_whatsapp/common/appbar.dart';
import 'package:ui_flutter_whatsapp/common/divider.dart';
import 'package:ui_flutter_whatsapp/common/list_tile.dart';
import 'package:ui_flutter_whatsapp/widgets/privacy_page/live_location.dart';
import 'package:intl/intl.dart';

import '../../constants.dart';

class RequestAccountInfoPage extends StatefulWidget {
  const RequestAccountInfoPage({super.key});

  @override
  State<RequestAccountInfoPage> createState() => _RequestAccountInfoPageState();
}

class _RequestAccountInfoPageState extends State<RequestAccountInfoPage> {
  bool isRequested = false;

  String getReadyDate() {
    DateTime date = DateTime.now();
    DateTime oneWeekLater = date.add(const Duration(days: 3));
    String month = DateFormat('MMMM').format(oneWeekLater);
    String day = DateFormat('d').format(oneWeekLater);
    String year = DateFormat('y').format(oneWeekLater);
    return 'Ready by $month $day, $year';
  }

  void updateSelection() => setState(() {
        if (!isRequested) isRequested = true;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(
            isChildWidget: true,
            title: 'Request Account Info',
          ),
          const CustomImageContainer(
            margin: EdgeInsets.only(top: 40.0, bottom: 20.0),
            imageUrl: 'images/account_info.png',
            width: 65,
            paddingValue: 23,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Create a report of your WhatsApp account information and settings, which you can access or port to another app. This report does not include your messages.',
                    style: kInfoTextStyle2.copyWith(height: 1.5),
                  ),
                  TextSpan(
                    text: ' Learn more',
                    style: kInfoTextStyle2.copyWith(color: kTextLinkColor),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          const CustomDivider(),
          CustomListTile(
            onTap: updateSelection,
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
            leading: isRequested
                ? const Icon(Icons.schedule_rounded)
                : const Icon(Icons.description_rounded),
            subTitleWidget: Visibility(
              visible: isRequested,
              child: Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  getReadyDate(),
                  style: kSubTitleTextStyle,
                ),
              ),
            ),
            title: 'Request report',
          ),
          const CustomDivider(),
          const SizedBox(height: 10.0),
          Visibility(
            visible: isRequested,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: const [
                  Text(
                    'Your report will be ready in about 3 days. You\'ll have a few weeks to download your report after it\'s available.',
                    style: kInfoTextStyle,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Your request will be canceled if you make changes to your account such as changing your number or deleting your account.',
                    style: kInfoTextStyle,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}