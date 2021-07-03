import 'package:flutter/material.dart';
import 'package:rankii/config/dependency_injector.dart';
import 'package:rankii/services/auth/auth_service.dart';

class AuthMainPage extends StatefulWidget {
  AuthMainPage({Key? key}) : super(key: key);

  @override
  _AuthMainPageState createState() => _AuthMainPageState();
}

class _AuthMainPageState extends State<AuthMainPage> {
  @override
  void initState() {
    super.initState();
    Navigator.pushNamed(context, 'something');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: getIt<AuthService>().googleAuth,
              child: Image.asset(
                  "assets/images/btn_google_signin_light_normal_web.png"),
            ),
            TextButton(
              onPressed: getIt<AuthService>().googleSignOut,
              child: const Text("Sign Out"),
            ),
          ],
        ),
      ),
    );
  }
}
