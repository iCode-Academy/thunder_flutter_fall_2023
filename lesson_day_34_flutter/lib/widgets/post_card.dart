import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        vertical: 10
      ),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 10),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/150?img=3',
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'John Doe',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '2 hours ago',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed euismod, diam id aliquam ultrices, nisl nisi '
            'consequat ipsum, nec aliquam diam tortor eu nunc. '
            'Sed euismod, diam id aliquam ultrices, nisl nisi '
            'consequat ipsum, nec aliquam diam tortor eu nunc. '
            'Sed euismod, diam id aliquam ultrices, nisl nisi '
            'consequat ipsum, nec aliquam diam tortor eu nunc. '
            'Sed euismod, diam id aliquam ultrices, nisl nisi '
            'consequat ipsum, nec aliquam diam tortor eu nunc. '
            'Sed euismod, diam id aliquam ultrices, nisl nisi '
            'consequat ipsum, nec aliquam diam tortor eu nunc. '
            'Sed euismod, diam id aliquam ultrices, nisl nisi '
            'consequat ipsum, nec aliquam diam tortor eu nunc. '
            'Sed euismod, diam id aliquam ultrices, nisl nisi '
            'consequat ipsum, nec aliquam diam tortor eu nunc. '
            'Sed euismod, diam id aliquam ultrices, nisl nisi '
            'consequat ipsum, nec aliquam diam tortor eu nunc.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 10),
              Expanded(
                child: Row(
      ),

    );
  }
}
