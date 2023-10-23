import 'package:build_ready/widgets/builders_navigator.dart';
import 'package:flutter/material.dart';

class FlatTypeScreen extends StatelessWidget {
  const FlatTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA28B85),
        title:  BuildersNavigator(
          title: '2 Bhk',
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black87,
                  boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:const Offset(0, 3), // changes position of shadow
                      ),
                    ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
