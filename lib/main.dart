import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
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

class FirstTabIcon extends StatelessWidget {
  const FirstTabIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.work_history_outlined);
  }
}

class SecondTabIcon extends StatelessWidget {
  const SecondTabIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.psychology_sharp);
  }
}

class ThirdTabIcon extends StatelessWidget {
  const ThirdTabIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.contact_support);
  }
}

class FirstTabScreen extends StatelessWidget {
  const FirstTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Shannon Heylmun",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          "Full-Stack Developer",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Row(
          children: [
            Icon(Icons.lightbulb),
            Flexible(
              child: Wrap(
                spacing: 8.0,
                children: [
                  link("https://dart.dev/", "Dart"),
                  link("https://flutter.dev/", "Flutter"),
                  link("https://git-scm.com/", "Git"),
                  link("https://www.typescriptlang.org/", "Typescript"),
                  link(
                    "https://developer.mozilla.org/en-US/docs/Web/HTML",
                    "HTML",
                  ),
                  link(
                    "https://developer.mozilla.org/en-US/docs/Web/CSS",
                    "CSS",
                  ),
                  link("https://www.latex-project.org/", "LaTeX"),
                  link("https://www.python.org/", "Python"),
                  link("https://www.ruby-lang.org/en/", "Ruby"),
                  Text("Mechanical Drafting"),
                  Text("3D-printing"),
                  Text("CNC"),
                  Text("Open- and Closed-Circuit SCUBA"),
                  Text("& learning languages"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Future<void> launchURL(String url, {bool isNewTab = true}) async {
  Uri url0 = Uri.parse(url);
  if (!await launchUrl(
    url0,
    webOnlyWindowName: isNewTab ? '_blank' : '_self',
  )) {
    throw Exception('Could not launch $url0');
  }
}

Widget link(String url, String text) {
  return InkWell(
    child: Text(text, style: TextStyle(color: Colors.blue)),
    onTap: () => launchURL(url),
  );
}

class SecondTabScreen extends StatelessWidget {
  const SecondTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondTabIcon();
  }
}

class ThirdTabScreen extends StatelessWidget {
  const ThirdTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ThirdTabIcon();
  }
}
