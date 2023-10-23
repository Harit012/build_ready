import 'package:build_ready/Screens/builder_profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BuildersNavigator extends StatelessWidget {
   BuildersNavigator({super.key, required this.title});

  final String title;
  final String $userSymbol=(FirebaseAuth.instance.currentUser!.email!)[0].capitalized;


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
                        builder: (context) => const BuilderProfileScreen()),
                  );
                },
                child:CircleAvatar(
                  radius: 18,
                  backgroundColor:const Color.fromARGB(255, 15, 16, 14),
                  child: Text(
                    $userSymbol,
                    style:const TextStyle(color: Colors.white, fontSize: 12),
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
