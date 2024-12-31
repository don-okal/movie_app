import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie/core/utils/constants.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomCachedImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Widget? placeholder;
  final Widget? errorWidget;
  final BorderRadius? borderRadius;

  const CustomCachedImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.placeholder,
    this.errorWidget,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: Material(
        elevation: 5,
        child: CachedNetworkImage(
          imageUrl: '${Constants.baseURL}$imageUrl',
          width: width,
          height: height,
          fit: fit,
          placeholder: (context, url) =>
              placeholder ??
              Skeletonizer(
                enabled: true,
                child: placeholder ??
                    Container(
                      width: width,
                      height: height,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                    ),
              ),
          errorWidget: (context, url, error) =>
              errorWidget ??
              const Center(
                child: Icon(Icons.error, color: Colors.red),
              ),
        ),
      ),
    );
  }
}
