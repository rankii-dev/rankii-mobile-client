import 'package:flutter/material.dart';
import 'package:rankii/config/dependency_injector.dart';

import 'app.dart';

void main() async {
  await configureDependencies();
  runApp(App());
}
