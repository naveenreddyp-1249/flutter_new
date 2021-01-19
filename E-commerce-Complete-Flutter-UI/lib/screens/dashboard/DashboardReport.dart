import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:
// import 'package:http/http.dart' as http;

class DashboardReport extends StatefulWidget {
  @override
  _DashboardReportState createState() => _DashboardReportState();
}

class _DashboardReportState extends State<DashboardReport> {
  var my_data = json.decode(await getJson());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Dashboard"),
    );
  }
}

Future<String> getJson() {
  return rootBundle.loadString('json_data.json');
}
