// import 'package:build_ready/widgets/block_widget.dart';
import 'package:build_ready/widgets/block_widget.dart';
import 'package:flutter/material.dart';

class InsideWingScreen extends StatefulWidget {
  const InsideWingScreen({super.key, required this.noOfFloors});
  final int noOfFloors;
  @override
  State<InsideWingScreen> createState() => _InsideWingScreenState(noOfFloors);
}

class _InsideWingScreenState extends State<InsideWingScreen> {
  final int noOfFloors;
  final int noOdBlocksPerFloor = 8;

  _InsideWingScreenState(this.noOfFloors);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFA28B85),
            title: Row(
              children: [
                const Text('Wing A'),
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
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    "Wing wingname",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'OpenSanas',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                for (int j = 1; j <= noOfFloors; j++)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Floor $j :-",
                            style: const TextStyle(
                                fontSize: 20,
                                fontFamily: 'OpenSanas',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                for (int k = 1; k <= noOdBlocksPerFloor; k++)
                                  const BlockWidget(
                                    isBooked: false,
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  )
              ],
            ),
          )),
    );
  }
}
