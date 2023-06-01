import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkAvatar extends StatelessWidget {
  const CachedNetworkAvatar({Key? key, required this.imageUrl, this.radius = 20}) : super(key: key);

  final String? imageUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: radius * 2.0,
        width: radius * 2.0,
        child: imageUrl != null && imageUrl!.isNotEmpty
            ? ClipRRect(
          borderRadius: BorderRadius.circular(radius.toDouble()),
          child: CachedNetworkImage(
            imageUrl: imageUrl!,
            fit: BoxFit.cover,
          ),
        )
            : CircleAvatar(
            child: Icon(Icons.person, size: radius * 1.4, color: Colors.white.withOpacity(0.6),))
    );
  }
}
