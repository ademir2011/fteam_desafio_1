import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImageWidget extends StatefulWidget {
  final String urlImage;
  final double? height;
  final double? width;

  const CustomImageWidget({
    Key? key,
    required this.urlImage,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  State<CustomImageWidget> createState() => _CustomImageWidgetState();
}

class _CustomImageWidgetState extends State<CustomImageWidget> {
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: widget.height,
      width: widget.width,
      imageUrl: widget.urlImage,
      fit: BoxFit.cover,
      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, erro) => const Icon(Icons.error),
    );
  }
}
