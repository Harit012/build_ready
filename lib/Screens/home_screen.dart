
import 'package:build_ready/Screens/builder_profile_screen.dart';
import 'package:build_ready/widgets/add_new_project.dart';
import 'package:build_ready/widgets/projectwidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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

  final String user = FirebaseAuth.instance.currentUser!.email!;
  late String userName = "";

  @override
  Widget build(BuildContext context) {
    // FirebaseFirestore.instance.collection('user/$user/').snapshots();
    // void getDetails(snapshot, index) {
    //   final details = (snapshot.data!.docs[index]).data().values.toList();

    // }
    // int i = 0;
    // while (i < user.length) {
    //   if (user[i] == "@") {
    //     break;
    //   }
    //   else{
    //     userName += user[i];
    //   }
    // }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFA28B85),
          title: Row(
            children: [
              Text('Hello , $user'),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BuilderProfileScreen(),
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
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('/user/$user/Projects')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        final project =
                            (snapshot.data!.docs[index]).data().values.toList();
                        // print("1111111111111111111111111111111111");
                        // print("0000000000000000000000000000000000");
                        // print(project);
                        // print("1111111111111111111111111111111111");
                        // print("0000000000000000000000000000000000");
                        return ProjectWidget(projectName: project[3]);
                      },
                    );
                  } else {
                    return const Center(
                      child: Text("no data"),
                    );
                  }
                },
              )

              // const ProjectWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
