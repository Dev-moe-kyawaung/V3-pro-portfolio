// Skill progress item widget
import 'package:flutter/material.dart';

class SkillProgressItem extends StatelessWidget {
  const SkillProgressItem({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: const TextStyle(fontWeight: FontWeight.w700)),
            Text('${(value * 100).toInt()}%', style: const TextStyle(color: Colors.white70)),
          ],
        ),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(999),
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: value),
            duration: const Duration(milliseconds: 900),
            curve: Curves.easeOutCubic,
            builder: (_, animatedValue, __) {
              return LinearProgressIndicator(
                value: animatedValue,
                minHeight: 11,
                backgroundColor: Colors.white.withOpacity(0.08),
                valueColor: const AlwaysStoppedAnimation(Color(0xFF00E5FF)),
              );
            },
          ),
        ),
      ],
    );
  }
}
