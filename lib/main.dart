import 'package:desktopapp/src/home/home.dart';
import 'package:desktopapp/src/home/page2.dart';
import 'package:flutter/material.dart';
import 'plugins/desktop/desktop.dart';
import 'config_singleton.dart';

void main() async {
  ///set DB for desktop
  setTargetPlatformForDesktop();
  await setupLocator();

  runApp(const MyApp());
}

Future<void> setupLocator() async {
  setupServiceLocator();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const MyHomePage(title: 'Flutter Demo IndexDB'),
        '/page2': (context) => const MyHomePage2(title: 'Flutter Demo IndexDB'),
      },
      initialRoute: '/',
      // home: const MyHomePage(title: 'Flutter Demo IndexDB'),
    );
  }
}
