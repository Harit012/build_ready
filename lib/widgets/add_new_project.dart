import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class AddNewProject extends StatefulWidget {
  const AddNewProject({super.key});

  @override
  State<AddNewProject> createState() => _AddNewProjectState();
}

class _AddNewProjectState extends State<AddNewProject> {
  @override
  Widget build(BuildContext context) {
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;
    return LayoutBuilder(
      // ignore: avoid_types_as_parameter_names
      builder: (context, Constraints) {
        return SizedBox(
          height: 700,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 40, 16, keyboardSpace + 16),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                     TextField(
                      maxLength: 20,
                      decoration: InputDecoration(
                        label: Text('Project Name'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
