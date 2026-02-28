import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class FirstTabIcon extends StatelessWidget {
  const FirstTabIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const HugeIcon(icon: HugeIcons.strokeRoundedWorkHistory);
  }
}

class SecondTabIcon extends StatelessWidget {
  const SecondTabIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const HugeIcon(icon: HugeIcons.strokeRoundedSchool);
  }
}

class ThirdTabIcon extends StatelessWidget {
  const ThirdTabIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const HugeIcon(icon: HugeIcons.strokeRoundedContact);
  }
}
