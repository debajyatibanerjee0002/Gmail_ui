import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gmail_ui/navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      theme: ThemeData(
        primaryIconTheme: IconThemeData(
          color: Colors.grey[800],
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: NavigationPart(),
      // home: ComposeScreen(),
      // home: DrawerWidget(),
    );
  }
}
