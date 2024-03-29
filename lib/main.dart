import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './constants.dart';
import './pages/home.dart';
import './pages/settings.dart';
import './pages/archived.dart';
import './pages/archive_settings.dart';
import 'pages/launch_page/welcome.dart';
import 'pages/home/linked_devices.dart';
import 'pages/home/starred_messages.dart';
import './pages/settings_page/chats.dart';
import './pages/settings_page/avatar.dart';
import './pages/settings_page/profile.dart';
import './pages/settings_page/account.dart';
import './pages/settings_page/privacy.dart';
import 'pages/settings_page/storage_data.dart';
import 'pages/settings_page/notifications.dart';
import 'pages/settings_page/help/app_info.dart';
import 'pages/settings_page/privacy/about.dart';
import 'pages/settings_page/privacy/groups.dart';
import 'pages/settings_page/invite_friend.dart';
import 'pages/conversation_page/notifications.dart';
import 'pages/settings_page/help/contact_us.dart';
import 'pages/settings_page/chats/chat_backup.dart';
import 'pages/settings_page/chats/chat_history.dart';
import 'pages/settings_page/account/change_number.dart';
import 'pages/settings_page/account/two_step_auth.dart';
import 'pages/settings_page/privacy/live_location.dart';
import 'pages/settings_page/privacy/profile_photo.dart';
import 'pages/settings_page/chats/theme_wallpaper.dart';
import 'pages/settings_page/privacy/status_privacy.dart';
import 'pages/settings_page/account/choose_country.dart';
import 'pages/settings_page/account/delete_account.dart';
import 'pages/settings_page/privacy/blocked_contacts.dart';
import 'pages/settings_page/privacy/fingerprint_lock.dart';
import 'pages/settings_page/privacy/last_seen_online.dart';
import 'pages/conversation_page/verify_security_code.dart';
import 'pages/conversation_page/disappearing_messages.dart';
import 'package:ui_flutter_whatsapp/pages/home/payments.dart';
import 'pages/settings_page/chats/chat_backup/backup_on.dart';
import 'pages/settings_page/chats/chat_backup/backup_off.dart';
import 'pages/settings_page/chats/chat_backup/generate_key.dart';
import 'pages/settings_page/account/request_account_info.dart';
import 'pages/settings_page/privacy/disappering_messages.dart';
import 'pages/settings_page/privacy/default_message_timer.dart';
import 'pages/settings_page/account/security_notifications.dart';
import 'pages/settings_page/storage_data_page/network_usage.dart';
import 'pages/settings_page/storage_data_page/manage_storage.dart';
import 'package:ui_flutter_whatsapp/pages/settings_page/help.dart';
import 'pages/settings_page/storage_data_page/proxy_settings.dart';
import 'pages/settings_page/chats/chat_backup/create_encryption.dart';
import 'pages/settings_page/chats/chat_backup/generate_password.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kThemeData,
      initialRoute: '/welcomePage',
      routes: {
        '/homePage': (context) => const HomePage(),
        '/welcomePage': (context) => const WelcomePage(),
        '/helpPage': (context) => const HelpPage(),
        '/chatsPage': (context) => const ChatsPage(),
        '/aboutPage': (context) => const AboutPage(),
        '/groupsPage': (context) => const GroupsPage(),
        '/avatarPage': (context) => const AvatarPage(),
        '/appInfoPage': (context) => const AppInfoPage(),
        '/accountPage': (context) => const AccountPage(),
        '/privacyPage': (context) => const PrivacyPage(),
        '/profilePage': (context) => const ProfilePage(),
        '/settingsPage': (context) => const SettingsPage(),
        '/backupOnPage': (context) => const BackupOnPage(),
        '/paymentsPage': (context) => const PaymentsPage(),
        '/archivedPage': (context) => const ArchivedPage(),
        '/chooseCountry': (context) => const ChooseCountry(),
        '/contactUsPage': (context) => const ContactUsPage(),
        '/backupOffPage': (context) => const BackupOffPage(),
        '/chatBackupPage': (context) => const ChatBackupPage(),
        '/chatHistoryPage': (context) => const ChatHistoryPage(),
        '/storageDataPage': (context) => const StorageDataPage(),
        '/generateKeyPage': (context) => const GenerateKeyPage(),
        '/twoStepAuthPage': (context) => const TwoStepAuthPage(),
        '/networkUsagePage': (context) => const NetworkUsagePage(),
        '/changeNumberPage': (context) => const ChangeNumberPage(),
        '/inviteFriendPage': (context) => const InviteFriendPage(),
        '/liveLocationPage': (context) => const LiveLocationPage(),
        '/profilePhotoPage': (context) => const ProfilePhotoPage(),
        '/linkedDevicesPage': (context) => const LinkedDevicesPage(),
        '/deleteAccountPage': (context) => const DeleteAccountPage(),
        '/manageStoragePage': (context) => const ManageStoragePage(),
        '/proxySettingsPage': (context) => const ProxySettingsPage(),
        '/notificationsPage': (context) => const NotificationsPage(),
        '/statusPrivacyPage': (context) => const StatusPrivacyPage(),
        '/themeWallpaperPage': (context) => const ThemeWallpaperPage(),
        '/lastSeenOnlinePage': (context) => const LastSeenOnlinePage(),
        '/archiveSettingsPage': (context) => const ArchiveSettingsPage(),
        '/starredMessagesPage': (context) => const StarredMessagesPage(),
        '/fingerprintLockPage': (context) => const FingerprintLockPage(),
        '/blockedContactsPage': (context) => const BlockedContactsPage(),
        '/createEncryptionPage': (context) => const CreateEncryptionPage(),
        '/generatePasswordPage': (context) => const GeneratePasswordPage(),
        '/verifySecurityCodePage': (context) => const VerifySecurityCodePage(),
        '/requestAccountInfoPage': (context) => const RequestAccountInfoPage(),
        '/conversationDisappearingMessagesPage': (context) =>
            const ConversationDisappearingMessagesPage(),
        '/deafultMessageTimerPage': (context) =>
            const DeafultMessageTimerPage(),
        '/disappearingMessagesPage': (context) =>
            const DisappearingMessagesPage(),
        '/securityNotificationsPage': (context) =>
            const SecurityNotificationsPage(),
        '/conversationNotificationsPage': (context) =>
            const ConversationNotificationsPage(),
      },
    );
  }
}
