import 'package:build_ready/Screens/builder_profile_screen.dart';
import 'package:flutter/material.dart';

class BuildersNavigator extends StatelessWidget {
  const BuildersNavigator({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  BuilderProfileScreen()),
                  );
                },
                child: const CircleAvatar(
                  radius: 18,
                  backgroundColor: Color.fromARGB(255, 15, 16, 14),
                  child: Text(
                    'HP',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
