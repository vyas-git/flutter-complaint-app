import 'package:flutter/material.dart';
import 'package:kulona_amni/constants/colors.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final List<Ticket> _tickets = [
    Ticket(
        title: 'screens.dashboard.ticket'.tr(), description: 'Description 1'),
    Ticket(title: 'Ticket 2', description: 'Description 2'),
    Ticket(title: 'Ticket 3', description: 'Description 3'),
    Ticket(title: 'Ticket 4', description: 'Description 4'),
    Ticket(title: 'Ticket 5', description: 'Description 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [kSecondaryColor, Colors.grey.shade500],
        ),
      ),
      child: ListView.builder(
        itemCount: _tickets.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title:
                Text('screens.dashboard.ticket'.tr() + " " + index.toString()),
            subtitle: Text('screens.dashboard.description').tr(),
          );
        },
      ),
    ));
  }
}

class Ticket {
  final String title;
  final String description;

  Ticket({required this.title, required this.description});
}
