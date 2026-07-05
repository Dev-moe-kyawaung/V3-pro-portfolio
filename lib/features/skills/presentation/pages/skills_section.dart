// Skills section pageimport 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../../core/widgets/cyber_frame.dart';
import '../../../../../core/widgets/section_title.dart';
import '../widgets/intersection_animated_list.dart';
import '../widgets/skill_progress_item.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      ('Flutter UI', 0.95),
      ('Dart', 0.92),
      ('Responsive Design', 0.90),
      ('Animation', 0.88),
      ('State Management', 0.86),
      ('Firebase', 0.75),
    ];

    return CyberFrame(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 90),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SectionTitle(
                  title: 'Skills',
                  subtitle: 'Core technologies and design abilities I use to build polished products.',
                ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.15, end: 0),
                const SizedBox(height: 28),
                IntersectionAnimatedList(
                  children: skills
                      .map(
                        (s) => Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: SkillProgressItem(label: s.$1, value: s.$2),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
