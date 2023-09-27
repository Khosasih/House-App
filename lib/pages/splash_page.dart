import 'package:flutter/material.dart';
import 'package:house_app/pages/home/home_page.dart';
import 'package:house_app/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
        backgroundColor: purpleColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)));
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/images/splash_image.png')),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/logo.png'))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Hi, Selamat\nDatang",
                      style: blackTextStyle.copyWith(fontSize: 24),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Stop membuang banyak waktu\npada tempat yang tidak habitable.",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                        height: 50,
                        width: 210,
                        child: ElevatedButton(
                            style: raisedButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ));
                            },
                            child: Text(
                              "Explore Now",
                              style: whiteTextStyle.copyWith(fontSize: 18),
                            )))
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
