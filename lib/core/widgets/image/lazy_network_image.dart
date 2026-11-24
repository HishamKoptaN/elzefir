import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../custom_image.dart';

class LazyNetworkImage extends StatefulWidget {
  const LazyNetworkImage({
    super.key,
    required this.identifier,
    required this.image,
    this.fit = .cover,
  });

  final String identifier;
  final String image;
  final BoxFit fit;

  @override
  State<LazyNetworkImage> createState() => _LazyNetworkImageState();
}

class _LazyNetworkImageState extends State<LazyNetworkImage> {
  bool _shouldLoad = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: ValueKey(widget.identifier),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.01 && !_shouldLoad) {
          setState(() {
            _shouldLoad = true;
          });
        }
      },
      child: _shouldLoad
          ? CustomImage(image: widget.image, fit: widget.fit)
          : const SizedBox.expand(),
    );
  }
}
