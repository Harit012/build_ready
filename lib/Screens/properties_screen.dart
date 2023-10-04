// import 'package:build_ready/data/dummy_url.dart';
import 'package:build_ready/Screens/flat_booking_screen.dart';
import 'package:build_ready/Screens/gallery_features_screen.dart';
import 'package:build_ready/Screens/payment_info_screen.dart';
import 'package:build_ready/widgets/builders_navigator.dart';
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
          title: const BuildersNavigator(title: 'Properties'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FlatBookingScreen(),
                  ),
                );
              },
              child: const PropertiesWidget(
                  url: 'images/FlatBooking.jpg', name: 'Flat Booking'),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentInfoScreen(),
                  ),
                );
              },
              child: const PropertiesWidget(
                  url: 'images/PaymentDetails.jpg', name: 'Payment Details'),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GalleryFeaturesScreen()),
                );
              },
              child: const PropertiesWidget(
                  url: 'images/PhotoGallery.jpg', name: 'Photo Gallery'),
            ),
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
