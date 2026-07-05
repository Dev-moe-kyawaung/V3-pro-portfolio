// About section page
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../../core/widgets/cyber_frame.dart';
import '../../../../../core/widgets/glow_card.dart';
import '../../../../../core/widgets/section_title.dart';
import '../widgets/profile_summary_card.dart';
import '../widgets/stats_counter.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
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
                  title: 'About Me',
                  subtitle: 'A short summary of my background, focus, and working style.',
                ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.15, end: 0),
                const SizedBox(height: 28),
                const GlowCard(child: ProfileSummaryCard())
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .slideY(begin: 0.15, end: 0),
                const SizedBox(height: 20),
                const StatsCounter()
                    .animate()
                    .fadeIn(duration: 650.ms)
                    .slideY(begin: 0.12, end: 0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
