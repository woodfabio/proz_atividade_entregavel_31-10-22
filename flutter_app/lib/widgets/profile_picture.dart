import 'package:flutter/material.dart';

// Esta classe foi criada para fins didaticos, pois ja existe a classe nativa "CircleAvatar" que faz isso de forma mais simples.

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
    this.url,
  }) : super(key: key);

  final String? url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      child: url != null ?
            Image.network(
              url!,
              fit: BoxFit.cover,
            )
            : null,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
        ),
    );
  }
}