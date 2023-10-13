import 'package:build_ready/Screens/builder_profile_screen.dart';
import 'package:build_ready/widgets/add_new_project.dart';
import 'package:build_ready/widgets/projectwidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _addNewProject() {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) => const AddNewProject(),
    );
  }

  // void _onClickInkWell(context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => const PropertiesScreen(
  //         url: UrlsForExample.url,
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFA28B85),
          title: Row(
            children: [
              const Text('Hello , @buildername'),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>const BuilderProfileScreen(),
                          ),
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
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Your Projects',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSanas'),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: _addNewProject,
                          icon: const Icon(
                            Icons.add_circle_rounded,
                            size: 40,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const ProjectWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
