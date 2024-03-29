import 'package:flutter/material.dart';

import 'package:ui_flutter_whatsapp/common/appbar.dart';
import 'package:ui_flutter_whatsapp/common/divider.dart';
import 'package:ui_flutter_whatsapp/common/list_tile.dart';
import 'package:ui_flutter_whatsapp/constants.dart';
import 'package:ui_flutter_whatsapp/model/data.dart';
import 'package:ui_flutter_whatsapp/common/image_view.dart';
import 'package:ui_flutter_whatsapp/services/handle_navigation.dart';

const data = Data();

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isChildWidget: true,
        title: 'Profile',
      ),
      body: Column(
        children: [
          const SizedBox(height: 25.0),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Hero(
                tag: 'profileImage',
                child: GestureDetector(
                  onTap: () => NavigationHelper.openPage(
                    context: context,
                    page: const CustomImageView(
                      imagePath: 'images/u1.jpg',
                      titleWidget: Text('Profile'),
                      title: 'Nikhil',
                      actionsList: [
                        Icon(
                          Icons.edit_rounded,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.share_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/u1.jpg'),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                    color: kAccentColor, shape: BoxShape.circle),
                child: const Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 25.0),
          CustomListTile(
            padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
            leadingIndent: 15.0,
            leadingAlignment: MainAxisAlignment.start,
            leading: const Icon(
              Icons.person,
              color: kSecondaryColor,
              size: 25.0,
            ),
            subTitleWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Name',
                  style: kSubTitleTextStyle,
                ),
                const SizedBox(height: 3.0),
                Text(
                  'Nikhil',
                  style: kInfoTextStyle2.copyWith(fontSize: 17.0),
                ),
                const SizedBox(height: 8.0),
                Text(
                  data.textData['profile']![0],
                  style: kSubTitleTextStyle,
                ),
              ],
            ),
            trailing: const Icon(
              Icons.edit,
              color: kAccentColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60.0),
            child: CustomDivider(),
          ),
          CustomListTile(
            padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
            leading: const Icon(Icons.info_outline_rounded),
            title: 'About',
            titleStyle: kSubTitleTextStyle,
            subTitle: 'Urgent calls only',
            subTitleStyle: kInfoTextStyle2.copyWith(fontSize: 16.0),
            trailing: const Icon(
              Icons.edit,
              color: kAccentColor,
              size: 22.0,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60.0),
            child: CustomDivider(),
          ),
          CustomListTile(
            padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
            leading: const Icon(Icons.phone),
            title: 'Phone',
            titleStyle: kSubTitleTextStyle,
            subTitle: '+91 1234567890',
            subTitleStyle: kInfoTextStyle2.copyWith(fontSize: 16.0),
          )
        ],
      ),
    );
  }
}
