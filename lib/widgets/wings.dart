import 'package:build_ready/Screens/home_screen.dart';
import 'package:build_ready/data/dummy_url.dart';
import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'package:velocity_x/velocity_x.dart';

class Wing extends StatelessWidget {
  const Wing({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
        child: Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
             
            // image: const DecorationImage(
            //     image: NetworkImage(Flat1.str),
            //     opacity: 0.5,
            //     fit: BoxFit.cover),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'data',
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
