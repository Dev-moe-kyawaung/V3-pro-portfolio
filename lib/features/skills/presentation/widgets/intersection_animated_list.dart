// Intersection animated list widget
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class IntersectionAnimatedList extends StatefulWidget {
  const IntersectionAnimatedList({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  State<IntersectionAnimatedList> createState() => _IntersectionAnimatedListState();
}

class _IntersectionAnimatedListState extends State<IntersectionAnimatedList> {
  final Set<int> _visible = {};

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(widget.children.length, (index) {
        final child = widget.children[index];
        final shown = _visible.contains(index);

        return VisibilityDetector(
          key: Key('skill-$index'),
          onVisibilityChanged: (info) {
            if (info.visibleFraction > 0.15 && !_visible.contains(index)) {
              setState(() => _visible.add(index));
            }
          },
          child: AnimatedOpacity(
            opacity: shown ? 1 : 0,
            duration: const Duration(milliseconds: 600),
            child: AnimatedSlide(
              offset: shown ? Offset.zero : const Offset(0, 0.12),
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeOutCubic,
              child: child,
            ),
          ),
        );
      }),
    );
  }
}
