import 'package:cargo_sync_driver/6%20global%20widgets/text_wideget.dart';
import 'package:flutter/material.dart';

class TripScreen extends StatelessWidget {
  const TripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomText(
              text: "Trip Screen",
              textWeight: TextWeight.regular,
            )
          ],
        ),
      ),
    );
  }
}
