import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: imageUrl.isNotEmpty
            ? CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: imageUrl,
              )
            : const Icon(
                Icons.error,
              ),
      ),
    );
  }
}
