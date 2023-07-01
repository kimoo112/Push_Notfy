import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:makenot/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AwesomeNotifications().initialize(
    'android/app/src/main/res/drawable/notification',
    [
      NotificationChannel(
        channelKey: 'basic key',
        channelName: 'test channel',
        channelDescription: 'Notification for tests',
        playSound: true,
        channelShowBadge: true,
      ),
      NotificationChannel(
        channelKey: 'schedule key',
        channelName: 'schedule channel',
        channelDescription: 'Notification for tests',
        playSound: true,
        channelShowBadge: true,
      ),
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
