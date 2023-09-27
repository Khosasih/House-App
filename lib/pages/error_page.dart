import 'package:flutter/material.dart';
import 'package:house_app/pages/home/home_page.dart';
import 'package:house_app/theme.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
        backgroundColor: purpleColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)));
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/error_404.png',
              width: 300,
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              "Where are you going?",
              style: blackTextStyle.copyWith(fontSize: 24),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              "Seems like the page that you were\nrequested is already gone",
              style: greyTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 50,
              width: 210,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                        (route) => false);
                  },
                  style: raisedButtonStyle,
                  child: Text(
                    "Back to Home",
                    style: whiteTextStyle.copyWith(fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
