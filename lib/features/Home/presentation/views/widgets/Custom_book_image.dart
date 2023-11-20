import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imagrUrl});
  final String imagrUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.35 / 2, // width : height
      child: Container(
// height: MediaQuery.of(context).size.width * 0.5,
// width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: NetworkImage(imagrUrl),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
