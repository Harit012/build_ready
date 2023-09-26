import 'package:flutter/material.dart';

class BlockWidget extends StatelessWidget {
  const BlockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(20),
              //   color: Colors.amber
              // ),
              height: 100,
              width: 100,
              color: Colors.black12,
              child: const Center(child: Text('101')),
            ),
          ),
        ],
      ),
    );
  }
}
