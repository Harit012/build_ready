import 'package:build_ready/Screens/customers_screen.dart';
import 'package:build_ready/widgets/booking_form.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlockWidget extends StatelessWidget {
  const BlockWidget({super.key, required this.isBooked});
  final bool isBooked;
  // final void Function() bookingForm;

  Color _getColor(isBooked) {
    if (isBooked) {
      return const Color.fromARGB(245, 234, 95, 56);
    } else {
      return const Color.fromARGB(113, 117, 235, 80);
    }
  }

  void _bookingForm(context) {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) => const BookingForm(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              if (isBooked) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CustomersScreen(),
                  ),
                );
              } else {
                _bookingForm(context); // this is not Permenant
              }
            },
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: _getColor(isBooked),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  '101',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
