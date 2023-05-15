import 'package:flutter/material.dart';

class NotificationListScreen extends StatelessWidget {
  final List<String> notifications = [
    'Notification 1',
    'Notification 2',
    'Notification 3',
    'Notification 4',
    'Notification 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return ListTile(
            title: Text(notification),
            subtitle: Text('Notification description'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Handle notification tap
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text(notification),
                  content: Text('Notification details'),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
