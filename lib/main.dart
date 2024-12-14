// https://fluttergems.dev/packages/motion_tab_bar_v2/
// https://github.com/kimmanwky/Motion-Tab-Bar/blob/master/example/main.dart
import 'package:flutter/material.dart';

import 'package:fitrack/NavigationBarComponent.dart';
import 'package:fitrack/screen/homePage.dart';
import 'package:fitrack/screen/timerPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // this widget = root of app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motion Tab Bar Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialisation du contrôleur avec 2 onglets (HomePage et Chronomètre)
    _tabController = TabController(
      length: 2,  // nombre d'onglets
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Application'),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          // Les pages
          HomePage(),
          TimerPage(),
        ],
      ),
      bottomNavigationBar: NavigationBarComponent(tabController: _tabController),
    );
  }
}