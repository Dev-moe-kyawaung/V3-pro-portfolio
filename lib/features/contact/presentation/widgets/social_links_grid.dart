// Social links grid widget
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_links.dart';
import '../../../../../core/services/launch_service.dart';
import '../../../../../core/widgets/glow_card.dart';
import '../../../../../core/widgets/social_icon.dart';

class SocialLinksGrid extends StatelessWidget {
  const SocialLinksGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      (Icons.language_rounded, AppLinks.portfolio),
      (Icons.code_rounded, AppLinks.github),
      (Icons.business_rounded, AppLinks.linkedin),
    ];

    return GlowCard(
      child: Wrap(
        spacing: 14,
        runSpacing: 14,
        children: items
            .map(
              (item) => SocialIcon(
                icon: item.$1,
                onTap: () => LaunchService.openUrl(item.$2),
              ),
            )
            .toList(),
      ),
    );
  }
}
