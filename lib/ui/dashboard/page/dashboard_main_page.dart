import 'package:flutter/material.dart';

class DashboardMainPage extends StatefulWidget {
  DashboardMainPage({Key? key}) : super(key: key);

  @override
  _DashboardMainPageState createState() => _DashboardMainPageState();
}

class _DashboardMainPageState extends State<DashboardMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Dashboard"),
      ),
    );
  }
}
