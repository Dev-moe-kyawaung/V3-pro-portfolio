// Apps section page
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../../core/widgets/cyber_frame.dart';
import '../../../../../core/widgets/section_title.dart';
import '../widgets/app_collection_card.dart';

class AppsSection extends StatelessWidget {
  const AppsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final apps = [
      (
        'Mobile App Suite',
        'A collection of mobile-first Flutter apps with consistent design language.',
        Icons.phone_android_rounded
      ),
      (
        'Web Dashboard',
        'Responsive admin dashboards and data-heavy interfaces with clean UX.',
        Icons.space_dashboard_rounded
      ),
      (
        'UI Components',
        'Reusable design system pieces for faster product development.',
        Icons.grid_view_rounded
      ),
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
                  title: 'Apps',
                  subtitle: 'Extra products, utilities, and collections I have built.',
                ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.15, end: 0),
                const SizedBox(height: 28),
                Wrap(
                  spacing: 18,
                  runSpacing: 18,
                  children: apps
                      .map(
                        (a) => SizedBox(
                          width: 330,
                          child: AppCollectionCard(
                            title: a.$1,
                            description: a.$2,
                            icon: a.$3,
                          ),
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
