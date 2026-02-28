import 'package:flutter/material.dart';
import 'package:sh_portfolio/tab_scaffold.dart';

class SecondTabScreen extends StatelessWidget {
  const SecondTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabScaffold(
      children: [
        EducationCard(
          context: context,
          year: '08',
          school: 'Valencia College',
          degree: 'Associate of Arts in Mathematics',
        ),
        EducationCard(
          context: context,
          year: '10',
          school: 'University of Florida',
          degree: 'Bachelor of Science in Mathematics',
        ),
        EducationCard(
          context: context,
          year: '12',
          school: 'University of Florida',
          degree: 'Master of Arts in Teaching Mathematics',
        ),
      ],
    );
  }
}

class EducationCard extends StatelessWidget {
  const EducationCard({
    super.key,
    required this.context,
    required this.year,
    required this.school,
    required this.degree,
  });

  final BuildContext context;
  final String year;
  final String school;
  final String degree;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              AspectRatio(
                aspectRatio: 1.0,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: RotatedBox(quarterTurns: 3, child: Text("'$year")),
                ),
              ),
              Column(
                children: [
                  Text(
                    school,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(degree, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
