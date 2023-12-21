// ignore_for_file: depend_on_referenced_packages

import 'package:athletic_hub/app/app.dart';
import 'package:athletic_hub/app/util/di/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  usePathUrlStrategy();
  configureDependencies();

  WidgetsFlutterBinding.ensureInitialized();
// setWindowMinSize(const Size(400, 300));
//     setWindowMaxSize(Size.infinite);

  runApp(const App());
}
