// import 'package:build_ready/data/dummy_url.dart';
import 'package:build_ready/widgets/properties.dart';
import 'package:flutter/material.dart';

class PropertiesScreen extends StatelessWidget {
  const PropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFA28B85),
          title: Row(
            children: [
              const Text('Properties'),
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
        body: const Column(
          children: [
             SizedBox(
              height: 10,
            ),
             PropertiesWidget(
                url: 'images/FlatBooking.jpg', name: 'Flat Booking'),
             SizedBox(
              height: 10,
            ),
             PropertiesWidget(
                url: 'images/PaymentDetails.jpg', name: 'Payment Details'),
             SizedBox(
              height: 10,
            ),
             PropertiesWidget(
                url: 'images/PhotoGallery.jpg', name: 'Photo Gallery'),
            // Expanded(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Image(
            //             image: NetworkImage(UrlsForExample.url, scale: 2),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         height: 15,
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}