import 'package:build_ready/widgets/details_row.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BuilderProfileScreen extends StatelessWidget {
  const BuilderProfileScreen({super.key});
  final builderName = "Kachra Seth";
  final builderID = "AHN512";
  final builderEmail = "builder@gmail.com";
  final builderMobileNo = "8241110444";
  final companyName = "xyz";
  final companySite = "www.company.in";
  final companyLocation = "Rajkot,Gujarat";


  @override
  Widget build(BuildContext context) {
    final String $userSymbol=(FirebaseAuth.instance.currentUser!.email!)[0].capitalized;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA28B85),
        title: Row(
          children: [
            const Text('Profile'),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.exit_to_app),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor:const Color.fromARGB(255, 93, 152, 20),
                    child: Text(
                      $userSymbol,
                      style:const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    builderName,
                    style: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Builder's Details :",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DetailsRow(lable: "Builder's name :", value: builderName),
                  const SizedBox(height: 10),
                  DetailsRow(lable: "Builder ID :         ", value: builderID),
                  const SizedBox(height: 10),
                  DetailsRow(lable: "Builder's email :", value: builderEmail),
                  const SizedBox(height: 10),
                  DetailsRow(
                      lable: "Builder Mobile : ", value: builderMobileNo),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Business Details :",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DetailsRow(lable: 'Company Name :    ', value: companyName),
                  const SizedBox(height: 10),
                  DetailsRow(lable: 'Company Website :', value: companySite),
                  const SizedBox(height: 10),
                  DetailsRow(
                      lable: 'Company Location :', value: companyLocation),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          FirebaseAuth.instance.signOut();
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
                              'Log Out',
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
