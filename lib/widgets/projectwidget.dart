import 'dart:developer';

import 'package:flutter/material.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('Project clicked .......');
      },
      child: Container(
        height: 175,
        width: double.infinity,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
              fit: BoxFit.cover),
          color: Colors.black,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
          // boxShadow:
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text(
                "Project name",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "OpenSans"),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
