// Projects section page
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../../core/services/launch_service.dart';
import '../../../../../core/widgets/cyber_frame.dart';
import '../../../../../core/widgets/section_title.dart';
import '../widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      (
        'Portfolio Starter',
        'A premium Flutter portfolio template with motion-driven sections.',
        'https://picsum.photos/800/500?1',
        ['Flutter', 'Portfolio', 'UI'],
        'https://github.com/your-username/portfolio-starter',
        'https://your-demo-link.com'
      ),
      (
        'Business Landing',
        'A modern landing page with responsive hero, services, and contact flow.',
        'https://picsum.photos/800/500?2',
        ['Landing', 'Responsive', 'Web'],
        'https://github.com/your-username/business-landing',
        'https://your-demo-link.com'
      ),
      (
        'Admin Dashboard',
        'A clean admin dashboard with charts, tables, and component library.',
        'https://picsum.photos/800/500?3',
        ['Dashboard', 'Charts', 'Admin'],
        'https://github.com/your-username/admin-dashboard',
        'https://your-demo-link.com'
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
                  title: 'Projects',
                  subtitle: 'Selected builds, experiments, and portfolio-ready work.',
                ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.15, end: 0),
                const SizedBox(height: 28),
                Wrap(
                  spacing: 18,
                  runSpacing: 18,
                  children: projects
                      .map(
                        (p) => ProjectCard(
                          title: p.$1,
                          description: p.$2,
                          imageUrl: p.$3,
                          tags: p.$4,
                          onOpenRepo: () => LaunchService.openUrl(p.$5),
                          onOpenLive: () => LaunchService.openUrl(p.$6),
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
