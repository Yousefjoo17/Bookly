import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imagrUrl});
  final String imagrUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 1.35 / 2, // width : height
        child: CachedNetworkImage(
          imageUrl: imagrUrl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) =>
              const Icon(Icons.error, size: 60, color: Colors.red),
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
// height: MediaQuery.of(context).size.width * 0.5,
// width: MediaQuery.of(context).size.width * 0.3,