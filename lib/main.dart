import 'package:flutter/material.dart';
import 'package:sh_portfolio/first_tab_screen.dart';

import 'package:sh_portfolio/second_tab_screen.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sh_portfolio/tab_icons.dart';
import 'package:sh_portfolio/third_tab_screen.dart';

import 'package:logging/logging.dart';

final log = Logger('Logger');

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });
  // List<int> num = [-6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5];

  // Logger.root.level = Level.SEVERE; // skip logs less then severe.
  // for (int n in num) {
  //   log.info("extendedFibonacci($n)=${extendedFibonacci(n)}");
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'Shannon Heylmun');
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: GoogleFonts.asapTextTheme(textTheme),
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            bottom: const TabBar(
              tabs: [
                Tab(icon: FirstTabIcon()),
                Tab(icon: SecondTabIcon()),
                Tab(icon: ThirdTabIcon()),
              ],
            ),
          ),
          body: const TabBarView(
            children: [FirstTabScreen(), SecondTabScreen(), ThirdTabScreen()],
          ),
        ),
      ),
    );
  }
}
