// Stats counter widget
import 'package:flutter/material.dart';

import '../../../../../core/widgets/glow_card.dart';

class StatsCounter extends StatelessWidget {
  const StatsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      ('Projects', '10+'),
      ('Clients', '5+'),
      ('Years', '3+'),
      ('Platforms', '3'),
    ];

    return Wrap(
      spacing: 14,
      runSpacing: 14,
      children: items.map((item) {
        return SizedBox(
          width: 170,
          child: GlowCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.$2,
                  style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 6),
                Text(
                  item.$1,
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
