import 'package:flutter/material.dart';
import 'package:shop_app/screens/dashboard/dashboard_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Admin"),
            accountEmail: new Text("admin@gmail.com"),
          ),
          new ListTile(
            title: new Text("Menu"),
            leading: new Icon(Icons.menu_book),
          ),
          new ListTile(
            title: new Text("orders"),
            leading: new Icon(Icons.shopping_cart),
          ),
          new ListTile(
            title: new Text("Business"),
            leading: new Icon(Icons.add_business),
          ),
          new ListTile(
            title: new Text("Drivers"),
            leading: new Icon(Icons.delivery_dining),
          ),
          new ListTile(
            title: new Text("Banners"),
            leading: new Icon(Icons.photo_camera),
          ),
          new ListTile(
            title: new Text("Promotions"),
            leading: new Icon(Icons.home),
          ),
          new ListTile(
            title: new Text("Users"),
            leading: new Icon(Icons.people),
          ),
          new ListTile(
            title: new Text("Subadmins"),
            leading: new Icon(Icons.admin_panel_settings),
          ),
          new ListTile(
            title: new Text("Reports"),
            leading: new Icon(Icons.bar_chart),
          ),
          new ListTile(
              title: new Text("Log out"),
              leading: new Icon(Icons.logout),
              onTap: () =>
                  Navigator.pushNamed(context, SignInScreen.routeName)),
        ],
      ),
    );
  }
}
