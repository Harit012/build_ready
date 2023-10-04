import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
    required this.userName,
    required this.userNumber,
  });
  final String userName;
  final String userNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 70, 67, 58),
            radius: 25,
            child: Text('user'),
          ),
          const SizedBox(width: 20),
          Column(
            children: [
              Text(
                userName,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                userNumber,
              )
            ],
          )
        ],
      ),
    );
  }
}
