//import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../../core/widgets/cyber_frame.dart';
import '../../../../../core/widgets/glow_card.dart';
import '../../../../../core/widgets/section_title.dart';
import '../widgets/service_card.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      (
        'Flutter App Development',
        'High-quality apps for mobile and web with polished UI and solid architecture.',
        Icons.phone_android_rounded
      ),
      (
        'Responsive UI Design',
        'Layouts that adapt elegantly across phone, tablet, and desktop screens.',
        Icons.devices_rounded
      ),
      (
        'Motion & Animation',
        'Premium motion design with smooth transitions and micro-interactions.',
        Icons.auto_awesome_rounded
      ),
      (
        'Code Cleanup & Refactor',
        'Restructure and optimize existing Flutter codebases for maintainability.',
        Icons.code_rounded
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
                  title: 'Services',
                  subtitle: 'What I can help you build and polish.',
                ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.15, end: 0),
                const SizedBox(height: 28),
                Wrap(
                  spacing: 18,
                  runSpacing: 18,
                  children: services
                      .map(
                        (s) => SizedBox(
                          width: 330,
                          child: GlowCard(
                            child: ServiceCard(
                              title: s.$1,
                              description: s.$2,
                              icon: s.$3,
                            ),
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
} Services section page
