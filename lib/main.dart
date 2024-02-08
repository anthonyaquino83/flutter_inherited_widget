import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'myapp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  // await windowManager.ensureInitialized();

  // Use it only after calling `hiddenWindowAtLaunch`
  // windowManager.waitUntilReadyToShow().then((_) async {
  //   // Hide window title bar
  //   // await windowManager.setTitleBarStyle('hidden');
  //   await windowManager.setSize(const Size(360, 800));
  //   await windowManager.setPosition(const Offset(1550, 30));
  //   // await windowManager.center();
  //   await windowManager.show();
  //   await windowManager.setSkipTaskbar(false);
  // });
  runApp(const MyApp());
}
