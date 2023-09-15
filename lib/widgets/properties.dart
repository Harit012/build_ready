import 'package:flutter/material.dart';

class PropertiesWidget extends StatelessWidget {
  const PropertiesWidget({super.key, required this.url, required this.name});
  final String url;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    url,
                  ),
                  opacity: 0.4,
                  fit: BoxFit.cover),
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_circle_right_rounded,
                              color: Color(0xFFA28B85),
                              size: 50,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
