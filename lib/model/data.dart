import 'package:flutter/material.dart';

import 'package:ui_flutter_whatsapp/alert_dialogs/archive_chats.dart';
import 'package:ui_flutter_whatsapp/alert_dialogs/clear_all_chats.dart';
import 'package:ui_flutter_whatsapp/alert_dialogs/delete_all_chats.dart';
import 'package:ui_flutter_whatsapp/alert_dialogs/light_dialog.dart';
import 'package:ui_flutter_whatsapp/alert_dialogs/media_visibility.dart';
import 'package:ui_flutter_whatsapp/alert_dialogs/mobile_data.dart';
import 'package:ui_flutter_whatsapp/alert_dialogs/popup_notification_dialog.dart';
import 'package:ui_flutter_whatsapp/alert_dialogs/vibrate_dialog.dart';
import 'package:ui_flutter_whatsapp/common/checkbox.dart';
import 'package:ui_flutter_whatsapp/common/switch.dart';
import 'package:ui_flutter_whatsapp/alert_dialogs/chat_backup.dart';
import 'package:ui_flutter_whatsapp/alert_dialogs/select_theme.dart';
import 'package:ui_flutter_whatsapp/pages/home/new_conversation_action.dart';
import '../alert_dialogs/choose_account.dart';
import '../alert_dialogs/font_size.dart';
import '../alert_dialogs/mute_notifications.dart';

class Chat {
  const Chat({
    required this.imageUrl,
    this.imageStackIcon,
    required this.title,
    this.time,
    this.subTitle,
    this.trailingIcon,
    this.about,
    this.statusUrl,
  });

  final String imageUrl;
  final IconData? imageStackIcon;
  final String title;
  final String? time;
  final String? subTitle;
  final IconData? trailingIcon;
  final String? about;
  final String? statusUrl;
}

class Data {
  const Data();

  static const List<Chat> _conversationList = [
    Chat(
      imageUrl: 'images/g1.jpg',
      title: 'F.R.I.E.N.D.S 🙈',
      time: 'Yesterday',
      subTitle: 'Joey : I\'m not even sorry',
      about: 'Six F.R.I.E.N.D.S ten seasons',
    ),
    Chat(
        imageUrl: 'images/p1.jpg',
        title: 'Joey',
        time: '2/02/23',
        subTitle: 'How you doin?',
        about: 'Busy',
        statusUrl: 'images/status/s2.jpg'),
    Chat(
        imageUrl: 'images/p2.jpg',
        title: 'Rachael',
        time: '3/16/23',
        subTitle: 'Can you believe what happened today?',
        about: 'In love 💖',
        statusUrl: 'images/status/s3.jpg'),
    Chat(
        imageUrl: 'images/p3.jpg',
        title: 'Monica ',
        time: '22:34',
        subTitle: 'Tomorrow?',
        about:
            'I wish I could pivot my way out of this week, just like Ross did with that couch',
        statusUrl: 'images/status/s3.jpg'),
    Chat(
        imageUrl: 'images/p4.jpg',
        title: 'Ross',
        time: 'Yesterday',
        subTitle: 'Ah. Humor Based On My Pain.',
        about: 'Hey There 😉',
        statusUrl: 'images/status/s4.jpg'),
  ];

  List<Chat> get conversaionList => _conversationList;

  static const List<Chat> _inviteFriendList = [
    Chat(
      imageUrl: 'images/no_profile.jpg',
      title: 'Janice Litman-Goralnik',
      subTitle: '+91 9462736619',
    ),
    Chat(
      imageUrl: 'images/no_profile.jpg',
      title: 'Gunther',
      subTitle: '+91 8386772630',
    ),
    Chat(
      imageUrl: 'images/no_profile.jpg',
      title: 'Gavin Mitchell',
      subTitle: '+91 8893552671',
    ),
    Chat(
      imageUrl: 'images/no_profile.jpg',
      title: 'Paolo',
      subTitle: '+91 7388930166',
    ),
    Chat(
      imageUrl: 'images/no_profile.jpg',
      title: 'Charlie Wheeler',
      subTitle: '+91 637758391',
    ),
    Chat(
      imageUrl: 'images/no_profile.jpg',
      title: 'Carol',
      subTitle: '+91 9476628842',
    ),
    Chat(
      imageUrl: 'images/no_profile.jpg',
      title: 'Estelle Leonard',
      subTitle: '+91 9947728462',
    ),
    Chat(
      imageUrl: 'images/no_profile.jpg',
      title: 'Janice',
      subTitle: '+91 883726539, +91 9687653321',
    ),
    Chat(
      imageUrl: 'images/no_profile.jpg',
      title: 'Mike Hannigan',
      subTitle: '+91 8277382946',
    ),
    Chat(
      imageUrl: 'images/no_profile.jpg',
      title: 'Paul Stevens',
      subTitle: '+91 7534576288',
    ),
    Chat(
      imageUrl: 'images/no_profile.jpg',
      title: 'David',
      subTitle: '+91 9883745663',
    ),
    Chat(
      imageUrl: 'images/no_profile.jpg',
      title: 'Susan Bunch',
      subTitle: '+91 99472656482',
    ),
    Chat(
      imageUrl: 'images/no_profile.jpg',
      title: 'Julie',
      subTitle: '+91 89938827488',
    ),
  ];

  List<Chat> get inviteFriendList => _inviteFriendList;

  static const Map<String, List> _textData = {
    'archiveInfo': [
      'These chats stay archived when new messages are received. Tap to change',
    ],
    'securityNotifications': [
      'End-to-end encryption keeps your personal messages and calls between you and the people you choose. Not even WhatsApp can read or listen to them. This includes your:',
      'Get notified when your security code changes for a contact\'s phone in an end-to-end encrypted chat. If you have multiple devices, this setting must be enabled on each device where you want to get notifications.',
    ],
    'twoStepAuth': [
      'For extra security, turn on two-step verification, which will require a PIN when registering your phone number with WhatsApp again.',
    ],
    'changeNumber': [
      'Changing your phone number will migrate your account info, groups & settings.',
      'Before proceeding, please confirm that you are able to receive SMS or calls at your new number.',
      'If you have both a new phone & a new number, first change your number on your Old phone.',
    ],
    'requestAccountInfo': [
      'Create a report of your WhatsApp account information and settings, which you can access or port to another app. This report does not include your messages.',
      'Your report will be ready in about 3 days. You\'ll have a few weeks to download your report after it\'s available.',
      'Your request will be canceled if you make changes to your account such as changing your number or deleting your account.',
    ],
    'deleteAccount': [
      'To delete your account, confirm your country code and enter your phone number.',
    ],
    'readReceiptSwitch': [
      'If turned Off, you won\'t send or receive Read receipts. Read receipts are always sent for group chats.',
    ],
    'fingerPrintLock': [
      'When enabled, you\'ll need to use fingerprint to open WhatsApp. You can still answer calls if WhatsApp is locked.',
    ],
    'groups': [
      'Admins who can\'t add you to a group chat will have the option of inviting you privately instead.',
    ],
    'statusPrivacy': [
      'Changes to your privacy settings wont affect status updates that you\'ve sent already',
    ],
    'themeWallpaper': [
      'To change your wallpaper for light theme, turn on light theme from Settings > Chats > Theme.',
    ],
    'defaultMessageTimer': [
      'When turned on, all new individual chats will start with disappearing messages set to the duration you select. This setting will not affect your existing chats.',
    ],
    'lastSeenOnline': [
      ', you won\'t be able to see other people\'s last seen and online.'
    ],
    'contactsUs': [
      'Technical details like your model and settings can help us answer your question. ',
      'For support with payments,',
      ' go to ',
      'Help in your payments home screen.',
    ],
    'manageStorage': [
      'Stay in control of future storage needs and build privacy into your chats,',
    ],
    'proxy': [
      'Only use a proxy if you\'re unable to connect to WhatsApp. Your IP address may be visible to the proxy provider, which is not WhatsApp.',
    ],
    'deleteAllChatsDialog': [
      'Messages will only be removed from this device and your devices on the newer versions of WhatsApp.',
      'Also delete media received in chats from the device gallery',
    ],
    'clearAllChatsDialog': [
      'Messages will only be removed from this device and your devices on the newer versions of WhatsApp.',
      'Also delete media received in chats from the device gallery',
    ],
    'chatBackup': [
      'Back up your messages and media to Google Drive. You can restore them when you reinstall WhatsApp. Your messages will also back up to your phone\'s internal storage.',
      'Back up your chat history and media to Google Drive so if you change phones, your chat history is safe. For added security, you can protect your backup with end-to-end encryption.'
    ],
    'profile': [
      'This is not your username or pin. This name will be visible to your WhatsApp contacts.',
    ],
    'endToEndbackup': [
      'When turned on, your backup will be\nend-to-end encrypted before it gets uploade\nto Google Drive. NO one, not even Google or WhatsApp, will be able to access it.',
      [
        'Your current Google Drive backup size is ',
        '122 MB ',
        'including ',
        '33 MB media.',
      ],
      'Your backup is end-to-end encrypted on\nGoogle Drive. No one, not even Google or\nWhatsApp, can access it.',
      'You chose to protect your backup with a\n64-digit encryption key. If you would rather\nprotect it with a password, you can create\none.'
    ],
    'createEncryption': [
      'To protect your end-to-end encrypted backup, create a password. You will need this password to restore your backup.',
      'If you forget your password and lose your\nphone, WhatsApp cannot help you recover\nyour backup.',
      'Instead of using a password, you can protect\nand restore your end-to-end encrypted\nbackup with your encryption key:',
      'Save your key. WhatsApp does not have a\ncopy of it. If you forget your key and lose\nyour phone, WhatsApp cannot help you\nrecover your backup.'
    ],
    'disappearingMessages': [
      'For more privacy and storage, new messages will disappear from this chat for everyone after the selected duration except when kept. Anyone in the chat can change this setting. ',
      'Learn more'
    ],
    'verifySecurityCode': [
      'You have security notifications disabled, would you like to enable them?',
      ' To verify that messages and calls with User\nare end-to-end encrypted, scan this code on their device. You can also compare the number above instead. ',
    ],
    'community': [
      'Easily organize your related groups and send announcements. Now, your communities, like neighborhoods or schools, can have their own space.',
    ],
    'createCallLink': [
      'Anyone with WhatsApp can use this link to join this call. Only share it with people you trust.',
      'https://call.whatsapp.com/video/K9UtUhydQSjf50p0AHupz8w'
    ],
    'starredMessages': [
      'Tap and hold on any message in any chat to star it, so you can easily find it later.'
    ],
    'linkedDevices': [
      'Use WhatsApp on Web, Desktop, and other devices. ',
      'Your personal messages are',
      ' end-to-end encrypted ',
      'on all your devices.',
      'Your personal messages are ',
      'end-to-end encrypted ',
      'on all your devices.',
    ],
    'broadcast': [
      'Only contacts with +91 1234662749 n their adress book will receive your broadcast messages.',
    ],
    'qrCode': [
      'Your QR code is private. If you share it\nwith someone, they can scan it with their\nWhatsApp camera to add you as a contact.',
    ],
    'welcome': [
      'Read our ',
      'Privacy policy. ',
      'Tap "Agree and continue" to accept the ',
      'Terms of Service'
    ],
    'verifyNumber': [
      'Allow WhatsApp to manage this call ',
      'so we can call your phone number and end the call automatically.',
      'Allow WhatsApp to do a one-time check ',
      'and access your call log so we can confirm that you received the call.'
    ],
    'contactAccess': [
      'To easily send messages to friends\nand family, allow WhatsApp to access your contacts.',
    ],
    'liveLocation': [
      'Live location requires background location. You can manage this in your device settings.',
    ],
    'payments': [
      'To protect your security, WhatsApp does not store your UPI pin or full bank account number. '
    ],
    'muteNotifications': [
      'Weather participants will not see that you muted this chat. You will still be notified if you are mentioned.',
    ]
  };

  Map<String, List> get textData => _textData;

  static const Map<String, String> _archivedPopupMenuItems = {
    'Archive Settings': '/archiveSettingsPage',
  };

  Map<String, String> get archivedPopupMenuItems => _archivedPopupMenuItems;

  static const Map<String, dynamic> _chatPopupMenuItems = {
    'View contact': '',
    'Media, links, and docs': '',
    'Search': '',
    'Mute notifications': MuteNotificationsDialog(),
    'Disappearing messages': '/conversationDisappearingMessagesPage',
    'Wallpaper': '/themeWallpaperPage',
    'More': morePopupMenuItems,
  };

  Map<String, dynamic> get chatPopupMenuItems => _chatPopupMenuItems;

  static const Map<String, String> morePopupMenuItems = {
    'Report': '1',
    'Block': '2',
    'Clear chat': '3',
    'Export chat': '4',
    'Add shortcut': '5',
  };

  static const List<Map<String, Object>> _messageList = [
    {
      'sender': 'other',
      'text': 'Hey',
    },
    {
      'sender': 'me',
      'text': 'Hey',
    },
    {
      'sender': 'other',
      'text':
          'I was thinking of planning a trip to Hawaii. Would you like to join me?',
    },
    {
      'sender': 'me',
      'text': 'That sounds great! When are you thinking of going? ',
    },
    {
      'sender': 'other',
      'text': 'I was thinking of going in June. What do you think?',
    },
    {
      'sender': 'me',
      'text': 'June works for me. How long are you planning on staying?',
    },
    {
      'sender': 'other',
      'text': 'I was thinking of staying for a week',
    },
    {
      'sender': 'other',
      'text':
          'There are a few options that are reasonably priced. Do you have any preferences?',
    },
    {
      'sender': 'me',
      'text': 'Not really. I trust your judgment. What about accommodations?',
    },
    {
      'sender': 'other',
      'text':
          'I was thinking of renting a condo near the beach. It’\'s more affordable than staying at a hotel. And ou also like such condo you said',
    },
    {
      'sender': 'me',
      'text':
          'That sounds like a good idea. Do you need any help with planning?',
    },
    {
      'sender': 'other',
      'text':
          'Actually, that would be great. I could use some help with planning activities and excursions.',
    },
    {
      'sender': 'me',
      'text': 'Sure, I\'d be happy to help. Let\'s plan a fun trip!',
    },
  ];

  List<Map<String, Object>> get messageList => _messageList;

  static const List<Map<String, Object>> _settingsMenu = [
    {
      'leading': Icon(Icons.account_circle_rounded),
      'title': 'Account',
      'subTitle': 'Security notifications, change number',
      'pageRoute': '/accountPage'
    },
    {
      'leading': Icon(Icons.lock_rounded),
      'title': 'Privacy',
      'subTitle': 'Block contacts, disappearing messages',
      'pageRoute': '/privacyPage'
    },
    {
      'leading': Icon(Icons.emoji_emotions_rounded),
      'title': 'Avatar',
      'subTitle': 'Create, edit, profile photo',
      'pageRoute': '/avatarPage'
    },
    {
      'leading': Icon(Icons.chat_rounded),
      'title': 'Chats',
      'subTitle': 'Theme, wallpapers, chat history',
      'pageRoute': '/chatsPage'
    },
    {
      'leading': Icon(Icons.notifications_rounded),
      'title': 'Notifications',
      'subTitle': 'Message, group & call tones',
      'pageRoute': '/notificationsPage'
    },
    {
      'leading': Icon(Icons.storage_rounded),
      'title': 'Storage and data',
      'subTitle': 'Network usage, auto-download',
      'pageRoute': '/storageDataPage'
    },
    {
      'leading': Icon(Icons.language_rounded),
      'title': 'App language',
      'subTitle': 'English (phone\'s language)',
    },
    {
      'leading': Icon(Icons.help_outline),
      'title': 'Help',
      'subTitle': 'Help center, contact us, privacy policy',
      'pageRoute': '/helpPage'
    },
    {
      'leading': Icon(Icons.group),
      'title': 'Invite a friend',
      'pageRoute': '/inviteFriendPage',
    },
  ];

  List<Map> get settingsMenu => _settingsMenu;

  static const List<Map<String, Object>> _accountMenu = [
    {
      'leading': Icon(Icons.security_rounded),
      'title': 'Security notifications',
      'pageRoute': '/securityNotificationsPage'
    },
    {
      'leading': Icon(Icons.screen_lock_portrait_rounded),
      'title': 'Two-step verification',
      'pageRoute': '/twoStepAuthPage'
    },
    {
      'leading': Icon(Icons.send_to_mobile_rounded),
      'title': 'Change number',
      'pageRoute': '/changeNumberPage'
    },
    {
      'leading': Icon(Icons.description_rounded),
      'title': 'Request account info',
      'pageRoute': '/requestAccountInfoPage'
    },
    {
      'leading': Icon(Icons.delete_rounded),
      'title': 'Delete my account',
      'pageRoute': '/deleteAccountPage'
    },
  ];

  List<Map<String, Object>> get accountMenu => _accountMenu;

  static const List<Map<String, Object>> _privacyMenu = [
    {
      'title': 'Last seen and online',
      'subTitle': 'Everyone',
      'pageRoute': '/lastSeenOnlinePage'
    },
    {
      'title': 'Profile photo',
      'subTitle': 'My contacts',
      'pageRoute': '/profilePhotoPage'
    },
    {
      'title': 'About',
      'subTitle': 'My contacts',
      'pageRoute': '/aboutPage',
    },
    {
      'title': 'Status',
      'subTitle': '404 contacts excluded',
      'pageRoute': '/statusPrivacyPage'
    },
    {
      'title': 'Groups',
      'subTitle': '404 contacts excluded',
      'pageRoute': '/groupsPage'
    },
    {
      'title': 'Live location',
      'subTitle': 'None',
      'pageRoute': '/liveLocationPage',
    },
    {
      'title': 'Blocked contacts',
      'subTitle': 'None',
      'pageRoute': '/blockedContactsPage',
    },
    {
      'title': 'Fingerprint lock',
      'subTitle': 'Disabled',
      'pageRoute': '/fingerprintLockPage'
    },
  ];

  List<Map<String, Object>> get privacyMenu => _privacyMenu;

  static const List<String> _genericPrivacyRadioList = [
    'Everyone',
    'My contacts',
    'My contacts except...',
    'Nobody',
    'Only share with...'
  ];

  List<String> get genericPrivacyRadioList => _genericPrivacyRadioList;

  static const List<Map<String, Object>> _securityNotificationsInfoList = [
    {
      'leading': Icon(
        Icons.chat_outlined,
        size: 16.0,
      ),
      'title': 'Text and voice messages',
    },
    {
      'leading': Icon(
        Icons.call_rounded,
        size: 16.0,
      ),
      'title': 'Audio and video calls',
    },
    {
      'leading': Icon(
        Icons.attachment_rounded,
        size: 16.0,
      ),
      'title': 'Photos, videos and documents',
    },
    {
      'leading': Icon(
        Icons.location_on,
        size: 16.0,
      ),
      'title': 'Location sharing',
    },
    {
      'leading': Icon(
        Icons.offline_bolt_outlined,
        size: 16.0,
      ),
      'title': 'Status updates',
    },
  ];

  List<Map<String, Object>> get securityNotificationsInfoList =>
      _securityNotificationsInfoList;

  static const List<String> _delAccountInfoList = [
    '• Delete your account from WhatsApp',
    '• Erase your message history',
    '• Delete you from all of your WhatsApp groups',
    '• Delete your Google Drive backup',
    '• Delete your payments info',
  ];

  List<String> get delAccountInfoList => _delAccountInfoList;

  static const List<Map<String, Object>> _countryCodesList = [
    {
      'icon': '\ud83c\uddee\ud83c\uddf3',
      'code': '+91',
      'name': 'India',
      'isSelected': true,
    },
    {
      'icon': '\ud83c\uddfa\ud83c\uddf8',
      'code': '+1',
      'name': 'United States',
    },
    {
      'icon': '\ud83c\uddec\ud83c\udde7',
      'code': '+44',
      'name': 'United Kingdom'
    },
    {
      'icon': '\ud83c\udde8\ud83c\udde6',
      'code': '+1',
      'name': 'Canada',
    },
    {
      'icon': '\ud83c\udde6\ud83c\uddfa',
      'code': '+61',
      'name': 'Australia',
    },
    {
      'icon': '\ud83c\uddee\ud83c\uddea',
      'code': '+353',
      'name': 'Ireland',
    },
    {
      'icon': '\ud83c\uddfa\ud83c\uddff',
      'code': '+64',
      'name': 'New Zealand',
    },
    {
      'icon': '\ud83c\udded\ud83c\uddf2',
      'code': '+52',
      'name': 'Mexico',
    },
    {
      'icon': '\ud83c\uddef\ud83c\uddf5',
      'code': '+81',
      'name': 'Japan',
    },
    {
      'icon': '\ud83c\udde7\ud83c\uddf7',
      'code': '+55',
      'name': 'Brazil',
    },
    {
      'icon': '\ud83c\uddeb\ud83c\uddf7',
      'code': '+33',
      'name': 'France',
    },
    {
      'icon': '\ud83c\udde8\ud83c\uddf3',
      'code': '+86',
      'name': 'China',
    },
    {
      'icon': '\ud83c\udde9\ud83c\uddea',
      'code': '+49',
      'name': 'Germany',
    },
    {
      'icon': '\ud83c\uddea\ud83c\uddf8',
      'code': '+34',
      'name': 'Spain',
    },
    {
      'icon': '\ud83c\udde6\ud83c\uddea',
      'code': '+971',
      'name': 'United Arab Emirates'
    },
    {
      'icon': '\ud83c\uddff\ud83c\uddf2',
      'code': '+27',
      'name': 'South Africa',
    },
    {
      'icon': '\ud83c\uddf8\ud83c\udde6',
      'code': '+966',
      'name': 'Saudi Arabia'
    },
    {
      'icon': '\ud83c\uddf0\ud83c\uddf7',
      'code': '+82',
      'name': 'South Korea',
    },
    {
      'icon': '\ud83c\uddf3\ud83c\uddec',
      'code': '+234',
      'name': 'Nigeria',
    }
  ];

  List<Map<String, Object>> get countryCodesList => _countryCodesList;

  static const List<String> _deafultMessageTimerList = [
    '24 hours',
    '7 days',
    '90 days',
    'Off',
  ];

  List<String> get deafultMessageTimerList => _deafultMessageTimerList;

  static const List<Map<String, Object>> _chatOptions = [
    {
      'leading': Icon(Icons.brightness_6_rounded),
      'title': 'Theme',
      'subTitle': 'System default',
      'dialogWidget': SelectThemeDialog(),
    },
    {
      'leading': Icon(Icons.wallpaper_rounded),
      'title': 'Wallpaper',
      'pageRoute': '/themeWallpaperPage',
    },
    {
      'leading': Icon(Icons.cloud_upload_rounded),
      'title': 'Chat backup',
      'pageRoute': '/chatBackupPage',
    },
    {
      'leading': Icon(Icons.history_rounded),
      'title': 'Chat history',
      'pageRoute': '/chatHistoryPage',
    },
  ];

  List<Map<String, Object>> get chatOptions => _chatOptions;

  static const List<Map<String, Object>> _chatSettings = [
    {
      'title': 'Enter is send',
      'subTitle': 'Enter key will send your message',
      'trailing': CustomSwitch(),
    },
    {
      'title': 'Media visibility',
      'subTitle': 'Show newly downloaded media in your device\'s gallery',
      'subTitleIndent': 90.0,
      'trailing': CustomSwitch(),
    },
    {
      'title': 'Font size',
      'subTitle': 'Small',
      'dialogWidget': FontSizeDialog(),
    },
  ];

  List<Map<String, Object>> get chatSettings => _chatSettings;

  static const List<Map<String, Object>> _chatHistoryOptionsList = [
    {
      'leading': Icon(Icons.file_upload_outlined),
      'title': 'Export chat',
    },
    {
      'leading': Icon(Icons.archive_rounded),
      'title': 'Archive all chats',
      'dialogWidget': ArchiveChatsDialog()
    },
    {
      'leading': Icon(Icons.do_not_disturb_on_outlined),
      'title': 'Clear all chats',
      'dialogWidget': ClearAllChatsDialog()
    },
    {
      'leading': Icon(Icons.delete_rounded),
      'title': 'Delete all chats',
      'dialogWidget': DeleteAllChatsDialog(),
    },
  ];

  List<Map<String, Object>> get chatHistoryOptionsList =>
      _chatHistoryOptionsList;

  static const List<String> _themeDialogOptions = [
    'System Default',
    'Light',
    'Dark',
  ];

  List<String> get themeDialogOptions => _themeDialogOptions;

  static const List<String> _chatBackupDialogOptions = [
    'Never',
    'Only when I tap "Back up"',
    'Daily',
    'Weekly',
    'Monthly',
  ];

  List<String> get chatBackupDialogOptions => _chatBackupDialogOptions;

  static const List<String> _lastSeenRadioList = [
    'Everyone',
    'My contacts',
    'My contacts except...',
    'Nobody'
  ];

  List<String> get lastSeenRadioList => _lastSeenRadioList;

  static const List<String> _onlineIndicationRadioList = [
    'Everyone',
    'Same as last seen',
  ];

  List<String> get onlineIndicationRadioList => _onlineIndicationRadioList;

  static const List<Map<String, Object>> _helpOptionsList = [
    {
      'leading': Icon(Icons.help_outline_rounded),
      'title': 'Help Center',
      'pageRoute': '',
    },
    {
      'leading': Icon(Icons.people_rounded),
      'title': 'Contact us',
      'subTitle': 'Questions? Need help?',
      'pageRoute': '/contactUsPage',
    },
    {
      'leading': SizedBox(width: 27.0),
      'title': 'Terms and Privacy Policy',
      'pageRoute': '',
    },
    {
      'leading': Icon(Icons.description_rounded),
      'title': 'Yearly reminder of our Terms of Service',
      'pageRoute': '',
    },
    {
      'leading': Icon(Icons.info_outline_rounded),
      'title': 'App info',
      'pageRoute': '/appInfoPage',
    },
  ];

  List<Map<String, Object>> get helpOptionsList => _helpOptionsList;

  static const List<Map<String, Object>> _notificationsOptionList = [
    {
      'title': 'Notification  tone',
      'subTitle': 'Default(Prism)',
    },
    {
      'title': 'Vibrate',
      'subTitle': 'Default',
      'dialogWidget': VibrateDialog(),
    },
    {
      'title': 'Popup notification',
      'subTitle': 'Not available',
      'dialogWidget': PopupNotificationDialog(),
      'isEnabled': false,
    },
    {
      'title': 'Light',
      'subTitle': 'White',
      'dialogWidget': LightDialog(),
    },
    {
      'title': 'Use high priority notifications',
      'subTitle': 'Show previews of notifications at the top of the screen',
      'trailing': CustomSwitch(),
      'subTitleIndent': 90.0,
    },
    {
      'title': 'Reaction Notifications',
      'subTitle': 'Show notifications for reactions to messages you send',
      'trailing': CustomSwitch(),
      'subTitleIndent': 120.0,
    },
  ];

  List<Map<String, Object>> get notificationsOptionList =>
      _notificationsOptionList;

  static const List<String> _vibrateDialogOptionList = [
    'Off',
    'Default',
    'Short',
    'Long',
  ];

  List<String> get vibrateDialogOptionList => _vibrateDialogOptionList;

  static const List<String> _lightDialogOptionList = [
    'None',
    'White',
    'Red',
    'Yellow',
    'Green',
    'Cyan',
    'Blue',
    'Purple',
  ];

  List<String> get lightDialogOptionList => _lightDialogOptionList;

  static const List<Map<String, Object>> _notificationsOptionListTwo = [
    {
      'title': 'Ringtone',
      'subTitle': 'Default(Prism)',
    },
    {
      'title': 'Vibrate',
      'subTitle': 'Default',
      'dialogWidget': VibrateDialog(),
    },
  ];

  List<Map<String, Object>> get notificationsOptionListTwo =>
      _notificationsOptionListTwo;

  static const List<Map<String, Object>> _storageDataOptionList = [
    {
      'leading': SizedBox(width: 20.0),
      'title': 'When using mobile data',
      'subTitle': 'No media',
      'dialogWidget': MobileDataDialog(title: 'When using mobile data')
    },
    {
      'leading': SizedBox(width: 20.0),
      'title': 'When connected to Wi-Fi',
      'subTitle': 'No media',
      'dialogWidget': MobileDataDialog(title: 'When connected to Wi-Fi')
    },
    {
      'leading': SizedBox(width: 20.0),
      'title': 'When roaming',
      'subTitle': 'No media',
      'dialogWidget': MobileDataDialog(title: 'When roaming')
    },
  ];

  List<Map<String, Object>> get storageDataOptionList => _storageDataOptionList;

  static const List<Chat> _chatsList = [
    Chat(
      imageUrl: 'images/g1.jpg',
      title: 'F.R.I.E.N.D.S',
      time: '19.5 MB',
    ),
    Chat(
      imageUrl: 'images/p1.jpg',
      title: 'Joey',
      time: '4.0 MB',
    ),
    Chat(
      imageUrl: 'images/p2.jpg',
      title: 'Rachael',
      time: '1.5 MB',
    ),
    Chat(
      imageUrl: 'images/p3.jpg',
      title: 'Monica',
      time: '867 kB',
    ),
    Chat(
      imageUrl: 'images/p4.jpg',
      title: 'Ross',
      time: '592 kB',
    ),
    Chat(
      imageUrl: 'images/p5.png',
      title: 'Tag Jones',
      time: '423 kB',
    ),
    Chat(
      imageUrl: 'images/p6.jpg',
      title: 'Eddie Meneuk',
      time: '404 kB',
    ),
    Chat(
      imageUrl: 'images/p7.jpg',
      title: 'Barry Farber',
      time: '120 kB',
    ),
    Chat(
      imageUrl: 'images/p8.jpg',
      title: 'Tag Jones',
      time: '3.8 MB',
    ),
    Chat(
      imageUrl: 'images/p9.jpg',
      title: 'Amy Green',
      time: '5.8 MB',
    ),
    Chat(
      imageUrl: 'images/p10.jpg',
      title: 'Pete Becker',
      time: '3.0 MB',
    ),
  ];

  List<Chat> get chatsList => _chatsList;

  static const List<String> _photoQualityDialogList = [
    'Auto (recommended)',
    'Best quality',
    'Data saver',
  ];

  List<String> get photoQualityDialogList => _photoQualityDialogList;

  static const List<String> _mobileDataDialogList = [
    'Photos',
    'Audio',
    'Videos',
    'Documents',
  ];

  List<String> get mobileDataDialogList => _mobileDataDialogList;

  static const List<Map<String, Object>> _networkTileList = [
    {
      'leading': Icons.call_rounded,
      'title': 'Calls',
      'subTitle': ['0 outgoing', '0 incoming'],
      'percent': 0.0,
      'trailing': ['0kB', '0kB']
    },
    {
      'leading': Icons.perm_media_rounded,
      'title': 'Media',
      'subTitle': ['0 outgoing', '0 incoming'],
      'percent': 0.2,
      'trailing': ['21.0MB', '33.7MB']
    },
    {
      'leading': Icons.add_to_drive,
      'title': 'Google Drive',
      'subTitle': ['0 outgoing', '0 incoming'],
      'percent': 0.12,
      'trailing': ['13.5MB', '0kB']
    },
    {
      'leading': Icons.chat_rounded,
      'title': 'Messages',
      'subTitle': ['0 outgoing', '0 incoming'],
      'percent': 0.05,
      'trailing': ['1.9MB', '3.8MB']
    },
    {
      'leading': Icons.timelapse_rounded,
      'title': 'Status',
      'subTitle': ['0 sent', '0 received'],
      'percent': 0.6,
      'trailing': ['0kB', '243.5MB']
    },
    {
      'leading': Icons.language_rounded,
      'title': 'Roaming',
      'subTitle': ['0 sent', '0 received'],
      'percent': 0.0,
      'trailing': ['0kB', '0kB']
    },
  ];

  List<Map<String, dynamic>> get networkTileList => _networkTileList;

  static const List<Map<String, Object>> _chatBackupOptionsList = [
    {
      'leading': SizedBox(width: 30.0),
      'title': 'Backup to Google Drive',
      'subTitle': 'Never',
      'dialogWidget': ChatBackupDialog(),
    },
    {
      'leading': SizedBox(width: 30.0),
      'title': 'Google Account',
      'subTitle': 'example@protonmail.com',
      'dialogWidget': ChooseBackupAccount()
    },
    {
      'leading': SizedBox(width: 30.0),
      'title': 'Backup using cellular',
      'trailing': CustomSwitch(),
    },
    {
      'leading': SizedBox(width: 30.0),
      'title': 'Include videos',
      'trailing': CustomSwitch(),
    },
  ];

  List<Map<String, Object>> get chatBackupOptionsList => _chatBackupOptionsList;

  static const Map<String, String> _aboutPopupMenuItemsList = {
    'Share': '',
    'Edit': '',
    'View in address book': '',
    'Verify security code': '/verifySecurityCodePage',
  };

  Map<String, String> get aboutPopupMenuItemsList => _aboutPopupMenuItemsList;

  static const List<Map<String, Object>> _aboutPageOptionList = [
    {
      'leading': Icon(Icons.notifications_rounded),
      'title': 'Mute notifications',
      'trailing': CustomSwitch(),
    },
    {
      'leading': Icon(Icons.music_note_rounded),
      'title': 'Custom notifications',
      'pageRoute': '/conversationNotificationsPage',
    },
    {
      'leading': Icon(Icons.perm_media_rounded),
      'title': 'Media visibility',
      'dialogWidget': MediaVisibilityDialog(),
    },
    {
      'leading': Icon(Icons.lock_rounded),
      'title': 'Encryption',
      'subTitle': 'Messages and calls are end-to-end encrypted. Tap to verify.',
      'subTitleIndent': 100.0,
      'pageRoute': '/verifySecurityCodePage'
    },
    {
      'leading': Icon(Icons.timelapse_rounded),
      'title': 'Disappearing messages',
      'subTitle': '24 hours',
      'pageRoute': '/conversationDisappearingMessagesPage'
    },
  ];

  List<Map<String, Object>> get aboutPageOptionList => _aboutPageOptionList;

  static const List<Map<String, Object>> _coversationNotificationOptionsList = [
    {
      'title': 'Notification tone',
      'subTitle': 'Default(Prism)',
    },
    {
      'title': 'Vibrate',
      'subTitle': 'Off',
      'dialogWidget': VibrateDialog(),
    },
    {
      'title': 'Popup notification',
      'subTitle': 'Not available',
      'isEnabled': false,
    },
    {
      'title': 'Light',
      'subTitle': 'White',
      'dialogWidget': LightDialog(),
    },
    {
      'title': 'Use high priority notifications',
      'subTitle': 'Show previews of notifications at the tap of the screen',
      'subTitleIndent': 90.0,
      'trailing': CustomCheckBox(),
    },
    {
      'title': 'Ringtone',
      'subTitle': 'Default(Prism)',
    },
    {
      'title': 'Vibrate',
      'subTitle': 'Default',
      'dialogWidget': VibrateDialog()
    },
  ];

  List<Map<String, Object>> get coversationNotificationOptionsList =>
      _coversationNotificationOptionsList;

  static const List<String> _mediaVisibilityRadioList = [
    'Default (Yes)',
    'Yes',
    'No',
  ];

  List<String> get mediaVisibilityRadioList => _mediaVisibilityRadioList;

  static const Map<String, Object> _imageViewPopupMenuOptions = {
    'Edit': '',
    'All media': '',
    'Show in chat': '',
    'Share': '',
    'Save': '',
    'Set as...': {
      'My profile photo': '',
      'Group icon': '',
    },
    'View in gallery': '',
    'Rotate': '',
    'Delete': '',
    'Report User': ''
  };

  Map<String, dynamic> get imageViewPopupMenuOptions =>
      _imageViewPopupMenuOptions;

  static const Map<String, Object> _homePagePopUpMenuOptions = {
    'New Group': NewConversationActionPage(pageType: 'group'),
    'New broadcase': NewConversationActionPage(pageType: 'broadcast'),
    'Linked devices': '/linkedDevicesPage',
    'Starred messages': '/starredMessagesPage',
    'Payments': '/paymentsPage',
    'Settings': '/settingsPage',
  };

  Map<String, dynamic> get homePagePopUpMenuOptions =>
      _homePagePopUpMenuOptions;

  static const List<Map<String, String>> _callHistoryList = [
    {
      'leading': 'images/g1.jpg',
      'title': 'F.R.I.E.N.D.S 🙈',
      'subTitle': '13:22',
      'sender': 'other',
      'attended': 'yes',
      'type': 'video',
      'about': 'SIX F.R.I.E.N.D.S A DECADE OF SEASONS'
    },
    {
      'leading': 'images/p1.jpg',
      'title': 'Joey',
      'subTitle': 'February 18, 11:29',
      'sender': 'me',
      'attended': 'yes',
      'type': 'audio',
      'about': 'Busy',
    },
    {
      'leading': 'images/p2.jpg',
      'title': 'Rachael',
      'subTitle': 'February 2, 22:10',
      'sender': 'other',
      'attended': 'no',
      'type': 'audio',
      'about': 'In love 💖',
    },
    {
      'leading': 'images/p3.jpg',
      'title': 'Monica ',
      'subTitle': 'January 11, 08:42',
      'sender': 'other',
      'attended': 'yes',
      'type': 'video',
      'about':
          'I wish I could pivot my way out of this week, just like Ross did with that couch',
    },
    {
      'leading': 'images/p4.jpg',
      'title': 'Ross',
      'subTitle': '10/21/22, 11:26',
      'sender': 'me',
      'attended': 'yes',
      'type': 'audio',
      'about': 'Hey There 😉',
    },
  ];

  List<Map<String, String>> get callHistoryList => _callHistoryList;

  static const List<Map<String, String>> _statusUpdateList = [
    {
      'leading': 'images/p1.jpg',
      'title': 'Joey',
      'subTitle': '22:29',
      'statusUrl': 'images/status/s1.jpg',
      'uploadTime': 'Yesterday, 22:29',
      'statusText': 'A slice a day keeps the doctor away\n😜🍕'
    },
    {
      'leading': 'images/p2.jpg',
      'title': 'Rachael',
      'subTitle': '22:10',
      'statusUrl': 'images/status/s2.jpg',
      'uploadTime': 'Yesterday, 22:10',
      'statusText': 'Can\'t decide which one to wear first ⌚🤔💅'
    },
    {
      'leading': 'images/p3.jpg',
      'title': 'Monica ',
      'subTitle': 'Today, 08:42',
      'statusUrl': 'images/status/s3.jpg',
      'uploadTime': 'Today, 08:42',
      'statusText': 'Saucy and proud 🍅👩‍🍳'
    },
    {
      'leading': 'images/p4.jpg',
      'title': 'Ross',
      'subTitle': 'Today, 11:26',
      'statusUrl': 'images/status/s4.jpg',
      'uploadTime': 'Today, 11:26',
      'statusText': 'I\'ve always had a thing for the gentle giants 🦕💕'
    },
  ];

  List<Map<String, String>> get statusUpdateList => _statusUpdateList;

  static const Map<String, String> _callInfoPopupMenuOptions = {
    'Remove from call log': '',
    'Block': '',
  };

  Map<String, String> get callInfoPopupMenuOptions => _callInfoPopupMenuOptions;

  static const Map<String, String> _addCallPopupOptionsList = {
    'Invite a friend': '',
    'Contacts': '',
    'Refresh': '',
    'help': '',
  };

  Map<String, String> get addCallPopupOptionsList => _addCallPopupOptionsList;

  static const List<String> _chooseBackupAccountOptions = [
    'johndoe@gmail.com',
    'broadcast24@protonmail.com',
    'Add account'
  ];

  List<String> get chooseBackupAccountOptions => _chooseBackupAccountOptions;

  static const List<String> _callTypeRadioOptionsList = [
    'Video',
    'Voice',
  ];

  List<String> get callTypeRadioOptionsList => _callTypeRadioOptionsList;

  static const Map<String, dynamic> _statusUpdatePopupOptions = {
    'Mute': '',
    'Message': '',
    'Voice call': '',
    'Video call': '',
    'View contact': '',
    'Report': '',
  };

  Map<String, dynamic> get statusUpdatePopupOptions =>
      _statusUpdatePopupOptions;

  static const List<String> _fontSizeRadioOptions = [
    'Small',
    'Medium',
    'Large',
  ];

  List<String> get fontSizeRadioOptions => _fontSizeRadioOptions;

  static const List<String> _muteNotificationsRadioOptions = [
    '8 hours',
    '1 week',
    'Always',
  ];

  List<String> get muteNotificationsRadioOptions =>
      _muteNotificationsRadioOptions;
}
