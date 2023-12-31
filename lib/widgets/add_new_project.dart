import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class AddNewProject extends StatefulWidget {
  const AddNewProject({super.key});

  @override
  State<AddNewProject> createState() => _AddNewProjectState();
}

class _AddNewProjectState extends State<AddNewProject> {
  final _projectNameController = TextEditingController();
  final _projectIdController = TextEditingController();
  final _noOfWingController = TextEditingController();
  final _noOFFloorController = TextEditingController();
  final _noOFBlockOnFloorController = TextEditingController();
  final _imageUrlController = TextEditingController();

  late String flatType;
  final String user = FirebaseAuth.instance.currentUser!.email!;
  // final String path = "User";

  Future addUserDetails() async {
    await FirebaseFirestore.instance.collection('user/$user/Projects/').add({
      "project_name": _projectNameController.text,
      "project_id": _projectIdController.text,
      "no_of_wing": _noOfWingController.text,
      "no_of_floor": _noOFFloorController.text,
      "no_of_block_on_floor": _noOFBlockOnFloorController.text,
      
    });
  }

  @override
  Widget build(BuildContext context) {
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: 700,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 40, 16, keyboardSpace + 16),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Fill the form  ',
                            style: TextStyle(
                                fontSize: 20, fontFamily: 'OpenSanas'),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(Icons.close_rounded))
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: _projectNameController,
                        maxLength: 25,
                        decoration: const InputDecoration(
                          label: Text(
                            'Project Name',
                          ),
                        ),
                      ),
                      TextField(
                        controller: _projectIdController,
                        maxLength: 20,
                        decoration: const InputDecoration(
                          label: Text(
                            'Project Id',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 80,
                            child: TextField(
                              controller: _noOfWingController,
                              decoration: const InputDecoration(
                                label: Text(
                                  'No of Wings',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            width: 80,
                            child: TextField(
                              controller: _noOFFloorController,
                              decoration: const InputDecoration(
                                label: Text(
                                  'No. of Floors',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            width: 80,
                            child: TextField(
                              controller: _noOFBlockOnFloorController,
                              decoration: const InputDecoration(
                                label: Text(
                                  'No. of Floors',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: _imageUrlController,
                        decoration: const InputDecoration(
                          label: Text(
                            'Image URL',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          addUserDetails();
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 154,
                          height: 44,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFA28B85),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Add',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                height: 1.25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
