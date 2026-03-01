import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sh_portfolio/helpers.dart';
import 'package:sh_portfolio/tab_scaffold.dart';

class FirstTabScreen extends StatelessWidget {
  const FirstTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabScaffold(
      children: [
        WorkRow(
          iconWidget: HugeIcon(icon: HugeIcons.strokeRoundedBriefcase01),
          text: "Full-Stack Development",
        ),
        WorkCard(
          children: [
            textLink("https://flutter.dev/", "Flutter"),
            textLink("https://dart.dev/", "Dart"),
            textLink("https://git-scm.com/", "Git"),
            textLink("https://angular.dev", "Angular"),
            textLink("https://firebase.google.com", "Firebase"),
            textLink("https://aws.amazon.com", "AWS"),
            textLink("https://www.typescriptlang.org/", "Typescript"),
            textLink(
              "https://developer.mozilla.org/en-US/docs/Web/HTML",
              "HTML",
            ),
            textLink("https://sass-lang.com", "SASS"),
            textLink("https://getbootstrap.com", "Bootstrap"),
            textLink("https://m3.material.io", "Material Design"),
            textLink("https://developer.apple.com/design/", "iOS Design"),
            textLink(
              "https://www.interaction-design.org/literature/topics/responsive-design",
              "Responsive Design",
            ),
            textLink("https://www.latex-project.org/", "LaTeX"),
            textLink("https://www.python.org/", "Python"),
            textLink("https://www.ruby-lang.org/en/", "Ruby"),
          ],
        ),
        WorkRow(
          iconWidget: HugeIcon(icon: HugeIcons.strokeRoundedTeaching),
          text: "Mathematics & Teaching",
        ),
        WorkCard(
          children: [
            textLink(
              "https://bokcenter.harvard.edu/flipped-classrooms",
              "Flipped Classroom",
            ),
            textLink(
              "https://www.wise.live/blog/what-is-the-socratic-method-of-teaching/",
              "Socratic Tutoring",
            ),
            Text("Elementary Algebra"),
            Text("Geometry"),
            Text("Trigonometry"),
            Text("Pre-Calculus"),
            Text("Calculus"),
            Text("Differential Equations"),
            Text("Statistics"),
            Text("Discrete Mathematics"),
            Text("Probability"),
            Text("Number Theory"),
            Text("Combinatorics"),
            Text("Sets & Logic"),
            Text("Elementary Graph Theory"),
            Text("Voting Theory"),
          ],
        ),
        WorkRow(
          iconWidget: HugeIcon(icon: HugeIcons.strokeRoundedAiInnovation03),
          text: "Interests & Hobbies",
        ),
        WorkCard(
          children: [
            textLink(
              "https://projecteuler.net/progress=s_heylmun",
              "Project Euler",
            ),
            Text("Mechanical Drafting"),
            Text("3D-printing"),
            Text("CNC"),
            Text("SCUBA"),
            Text("Portuguese"),
            Text("Catalan"),
            Text("Hungarian"),
            Text("Gardening"),
            Text("Animals"),
          ],
        ),
      ],
    );
  }
}

class WorkRow extends StatelessWidget {
  final Widget iconWidget;
  final String text;
  const WorkRow({super.key, required this.iconWidget, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        iconWidget,
        Text(text, style: Theme.of(context).textTheme.headlineSmall),
      ],
    );
  }
}

class WorkCard extends StatelessWidget {
  final List<Widget> children;
  const WorkCard({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 8.0,
          runSpacing: 8,
          children: children,
        ),
      ),
    );
  }
}
