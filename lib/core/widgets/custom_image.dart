import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.aspectRatio = 1,
    this.fit = BoxFit.cover,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
    this.backgroundColor = const Color(0xffF5F5F5),
  });
  final String image;
  final double? height;
  final double? width;
  final double aspectRatio;
  final BoxFit fit;
  final BorderRadius borderRadius;
  final Color backgroundColor;

  bool get _isNetwork {
    return image.startsWith('http://') || image.startsWith('https://');
  }

  @override
  Widget build(BuildContext context) {
    final child = _isNetwork
        ? CachedNetworkImage(
            imageUrl: image,
            fit: fit,
            placeholder: (_, __) {
              return Container(
                color: backgroundColor,
                alignment: Alignment.center,
                child: const SizedBox(
                  width: 22,
                  height: 22,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              );
            },
            errorWidget: (_, __, ___) {
              return Container(
                color: backgroundColor,
                alignment: Alignment.center,
                child: const Icon(Icons.broken_image_outlined, size: 34),
              );
            },
          )
        : Image.asset(
            image,
            fit: fit,
            errorBuilder: (_, __, ___) {
              return Container(
                color: backgroundColor,
                alignment: Alignment.center,
                child: const Icon(Icons.broken_image_outlined, size: 34),
              );
            },
          );
    return SizedBox(
      height: height,
      width: width ?? double.infinity,
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: ClipRRect(borderRadius: borderRadius, child: child),
      ),
    );
  }
}
