// Cimport 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../../core/widgets/cyber_frame.dart';
import '../../../../../core/widgets/section_title.dart';
import '../widgets/contact_form.dart';
import '../widgets/social_links_grid.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

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
                  title: 'Contact',
                  subtitle: 'Let’s discuss your next product, portfolio, or app idea.',
                ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.15, end: 0),
                const SizedBox(height: 28),
                const ContactForm().animate().fadeIn(duration: 650.ms).slideY(begin: 0.12, end: 0),
                const SizedBox(height: 28),
                const SocialLinksGrid().animate().fadeIn(duration: 700.ms).slideY(begin: 0.12, end: 0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}ontact section page
