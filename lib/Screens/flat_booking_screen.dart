import 'package:build_ready/data/dummy_url.dart';
import 'package:build_ready/widgets/wings.dart';

import 'package:flutter/material.dart';

class FlatBookingScreen extends StatelessWidget {
  const FlatBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFA28B85),
          title: Row(
            children: [
              const Text('Flat Booking'),
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
        body: SingleChildScrollView(
          child: Stack(
            children: [
              const SizedBox(
                height: 800,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Select Wing :- ",
                          style:
                              TextStyle(fontSize: 22, fontFamily: 'OpenSanas'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Flat1.type,
                          style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'OpenSanas',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 160,
                left: 20,
                right: 20,
                bottom: 50,
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 1000,
                    width: 600,
                    // color: Colors.black12,
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 15,
                      children: [
                        for (int i = 0; i <= 10; i++) const Wing(),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
