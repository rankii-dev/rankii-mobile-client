import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rankii/config/route_generator.dart';
import 'package:rankii/state/auth_state.dart';
import 'package:rankii/ui/auth/page/auth_main_page.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  AuthState? _authState;
  @override
  void initState() {
    super.initState();
    _authState = AuthState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _authState),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: RouteGenerator.generateRoute,
        home: AuthMainPage(),
      ),
    );
  }
}
