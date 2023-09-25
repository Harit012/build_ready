import 'package:build_ready/data/dummy_url.dart';
import 'package:build_ready/widgets/features.dart';
import 'package:flutter/material.dart';

class GalleryFeaturesScreen extends StatelessWidget {
  const GalleryFeaturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA28B85),
        title: Row(
          children: [
            const Text('Features'),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.verified_user_outlined),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Features(featureName: Flat1.type, url: Flat1.str),
            SizedBox(
              height: 30,
            ),
            Features(featureName: Flat1.emmu, url: Flat1.str),
          ],
        ),
      ),
    );
  }
}
