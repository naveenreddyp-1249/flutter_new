import 'package:flutter/material.dart';

import 'components/body.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/screens/dashboard/DashboardReport.dart';
import 'package:shop_app/screens/dashboard/banners_screen.dart';
import 'package:shop_app/screens/dashboard/orders_screen.dart';
import 'package:shop_app/screens/dashboard/drivers_screen.dart';
import 'package:shop_app/screens/dashboard/promotions_screen.dart';
import 'package:shop_app/screens/dashboard/business_screen.dart';
import 'package:shop_app/screens/dashboard/menu_screen.dart';

class Dashboard extends StatelessWidget {
  static String routeName = "/dashboard";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sidenav',
      theme: ThemeData(
        //
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sidenav app')),
      drawer: Sidenav(navIndex, (int index) {
        setState(() {
          navIndex = index;
        });
      }),
      body: Builder(
        builder: (context) {
          switch (navIndex) {
            case 0:
              return DashboardReport();
            case 1:
              return Menu();
            case 2:
              return Orders();
            case 3:
              return Business();
            case 4:
              return Drivers();
            case 5:
              return Banners();
            case 6:
              return Promotions();
            case 7:
              return Center(child: Text('SENT'));
            default:
          }
        },
      ),
    );
  }
}

class Sidenav extends StatelessWidget {
  final Function setIndex;
  final int selectedIndex;

  Sidenav(this.selectedIndex, this.setIndex);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Padding(
          //   padding: EdgeInsets.all(16.0),
          //   child: Text('Gmail',
          //       style: TextStyle(
          //           color: Theme.of(context).primaryColor, fontSize: 21)),
          // ),
          new UserAccountsDrawerHeader(
            accountName: new Text("Admin"),
            accountEmail: new Text("admin@gmail.com"),
          ),
          // Divider(color: Colors.grey.shade400),
          _navItem(context, Icons.home, 'Dashboard', onTap: () {
            _navItemClicked(context, 0);
          }, selected: selectedIndex == 0),
          Divider(color: Colors.grey.shade400),
          _navItem(context, Icons.inbox, 'Menu',
              // suffix: Text(
              //   '28',
              //   style: TextStyle(fontWeight: FontWeight.w500),
              // ),
              onTap: () {
            _navItemClicked(context, 1);
          }, selected: selectedIndex == 1),
          _navItem(context, Icons.group, 'Orders',
              suffix: Text(
                '28',
                style: TextStyle(fontWeight: FontWeight.w500),
              ), onTap: () {
            _navItemClicked(context, 2);
          }, selected: selectedIndex == 2),
          _navItem(context, Icons.group, 'Business',
              suffix: Text(
                '28',
                style: TextStyle(fontWeight: FontWeight.w500),
              ), onTap: () {
            _navItemClicked(context, 3);
          }, selected: selectedIndex == 3),
          _navItem(context, Icons.group, 'Drivers',
              suffix: Text(
                '28',
                style: TextStyle(fontWeight: FontWeight.w500),
              ), onTap: () {
            _navItemClicked(context, 4);
          }, selected: selectedIndex == 4),
          _navItem(context, Icons.group, 'Banners',
              suffix: Text(
                '28',
                style: TextStyle(fontWeight: FontWeight.w500),
              ), onTap: () {
            _navItemClicked(context, 5);
          }, selected: selectedIndex == 5),
          _navItem(context, Icons.local_offer, 'Promotions',
              suffix: Text(
                '28',
                style: TextStyle(fontWeight: FontWeight.w500),
              ), onTap: () {
            _navItemClicked(context, 6);
          }, selected: selectedIndex == 6),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('ALL LABELS',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                    letterSpacing: 1)),
          ),
          _navItem(context, Icons.star_border, 'Starred', onTap: () {
            _navItemClicked(context, 7);
          }, selected: selectedIndex == 7),
          _navItem(context, Icons.schedule, 'Snoozed', onTap: () {
            _navItemClicked(context, 8);
          }, selected: selectedIndex == 8),
          _navItem(context, Icons.label_important, 'Important', onTap: () {
            _navItemClicked(context, 9);
          }, selected: selectedIndex == 9),
          _navItem(context, Icons.send, 'Sent', onTap: () {
            _navItemClicked(context, 10);
          }, selected: selectedIndex == 10),
        ],
      ),
    );
  }

  _navItem(BuildContext context, IconData icon, String text,
          {Text suffix, Function onTap, bool selected = false}) =>
      Container(
        color: selected ? Colors.grey.shade300 : Colors.transparent,
        child: ListTile(
          leading: Icon(icon,
              color: selected ? Theme.of(context).primaryColor : Colors.black),
          trailing: suffix,
          title: Text(text),
          selected: selected,
          onTap: onTap,
        ),
      );

  _navItemClicked(BuildContext context, int index) {
    setIndex(index);
    Navigator.of(context).pop();
  }
}
