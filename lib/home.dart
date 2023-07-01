// ignore_for_file: avoid_unnecessary_containers

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                AwesomeNotifications().requestPermissionToSendNotifications();
              },
              child: const Text("request permisson")),
          const SizedBox(height: 22),
          ElevatedButton(
              onPressed: () {
                AwesomeNotifications().createNotification(
                    content: NotificationContent(
                        id: 1,
                        channelKey: "basic key",
                        title: "BAsic",
                        body: "Basic Notification",
                        notificationLayout: NotificationLayout.Default));
              },
              child: const Text("Basic")),
          const SizedBox(height: 22),
          ElevatedButton(
              onPressed: () {
                AwesomeNotifications().createNotification(
                    content: NotificationContent(
                        id: 2,
                        channelKey: "scadule key",
                        title: "BAsic",
                        body: "Basic Notification",
                        notificationLayout: NotificationLayout.Default),
                    schedule: NotificationAndroidCrontab.fromDate(
                        date: DateTime.now().add(const Duration(seconds: 3))));
              },
              child: const Text("Scadule")),
        ],
      ),
    ));
  }
}
