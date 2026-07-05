// Project card widget
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.tags,
    required this.onOpenRepo,
    required this.onOpenLive,
  });

  final String title;
  final String description;
  final String imageUrl;
  final List<String> tags;
  final VoidCallback onOpenRepo;
  final VoidCallback onOpenLive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      decoration: BoxDecoration(
        color: const Color(0xFF111A2E),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: Colors.white.withOpacity(0.08)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(color: Colors.white70, height: 1.5),
                ),
                const SizedBox(height: 14),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: tags
                      .map(
                        (tag) => Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                            color: const Color(0xFF00E5FF).withOpacity(0.12),
                            borderRadius: BorderRadius.circular(999),
                          ),
                          child: Text(
                            tag,
                            style: const TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: onOpenRepo,
                        child: const Text('Repo'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: onOpenLive,
                        child: const Text('Live'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
