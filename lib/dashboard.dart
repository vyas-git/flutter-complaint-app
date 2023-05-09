import 'package:flutter/material.dart';
import 'package:kulona_amni/constants/colors.dart';
import 'package:easy_localization/easy_localization.dart';

import 'home.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    ReportTab(),
    NotificationsTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('app_name').tr(),
          backgroundColor: Color.fromARGB(255, 0, 136, 255),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                ),
                child: CircleAvatar(
                  radius: 75.0,
                  backgroundColor: kPrimaryColor,
                  child: ClipOval(
                    child: Image.network(
                      "assets/user.jpg",
                      fit: BoxFit.cover,
                      width: 120.0,
                      height: 120.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('screens.dashboard.profile').tr(),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('screens.dashboard.settings').tr(),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('screens.dashboard.help').tr(),
                onTap: () {},
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey.shade200,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: 'screens.dashboard.home'.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.assignment),
                label: 'screens.dashboard.report'.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.notifications),
                label: 'screens.dashboard.notifications'.tr(),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: kPrimaryColor,
            onTap: _onItemTapped));
  }
}

class ReportTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Report Tab'),
    );
  }
}

class NotificationsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Notifications Tab'),
    );
  }
}
