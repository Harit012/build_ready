import 'package:build_ready/widgets/add_payment.dart';
import 'package:build_ready/widgets/builders_navigator.dart';
import 'package:build_ready/widgets/details_row.dart';
import 'package:build_ready/widgets/user_profile.dart';
import 'package:flutter/material.dart';

class CustomersScreen extends StatefulWidget {
  const CustomersScreen({super.key});

  @override
  State<CustomersScreen> createState() => _CustomersScreenState();
}

class _CustomersScreenState extends State<CustomersScreen> {
  final String blockNo = '101';
  final String wingNo = 'B';
  final int totalAmount = 1500000;
  final int paidAmount = 400000;
  final int remainingAmount = 1100000;

  @override
  Widget build(BuildContext context) {

    // ignore: no_leading_underscores_for_local_identifiers
    void _addPayment() {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) => const AddPayment(),
    );
  }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA28B85),
        title:  BuildersNavigator(
          title: 'Customer Profile',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(16),
          child: Column(
            children: [
              const UserProfile(userName: 'Harit', userNumber: '45154455251'),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Customer's Details :",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              DetailsRow(lable: "Flat no: ", value: blockNo),
              const SizedBox(height: 15),
              DetailsRow(lable: "Wing no: ", value: wingNo),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Payment Details :",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              DetailsRow(lable: "Paid Amount: ", value: paidAmount.toString()),
              const SizedBox(height: 15),
              DetailsRow(
                  lable: "Total Amount: ", value: totalAmount.toString()),
              const SizedBox(height: 15),
              DetailsRow(
                  lable: "Remaining Amount: ",
                  value: remainingAmount.toString()),
              const SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                      onPressed:_addPayment,
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
                              'Add Payment',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                height: 1.25,
                              ),
                            ),
                          ),),
                    ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
