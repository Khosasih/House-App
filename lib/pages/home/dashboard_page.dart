import 'package:flutter/material.dart';
import 'package:house_app/model/city.dart';
import 'package:house_app/model/space.dart';
import 'package:house_app/model/tips.dart';
import 'package:house_app/pages/widget/city_cards.dart';
import 'package:house_app/pages/widget/space_cards.dart';
import 'package:house_app/pages/widget/tips_cards.dart';
import 'package:house_app/theme.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE: HEADER
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                "Explore Now",
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Mencari Persinggahan",
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE: Popular City
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Popular Cities",
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            // ignore: sized_box_for_whitespace
            Padding(
              padding: EdgeInsets.only(left: edge),
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CityCard(
                      City(
                        1,
                        "Jakarta",
                        'assets/images/city/city1.png',
                        false,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CityCard(
                      City(
                        2,
                        "Bandung",
                        'assets/images/city/city2.png',
                        false,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CityCard(
                      City(
                        3,
                        "Majalengka",
                        'assets/images/city/city3.png',
                        true,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CityCard(
                      City(
                        4,
                        "Yogyakarta",
                        'assets/images/city/city1.png',
                        false,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE: RECOMMENDED SPACE
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                "Recommended Place",
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                        1,
                        "Hotel Indonesia",
                        'assets/images/space/space1.png',
                        "4.5",
                        "Rp.150.000",
                        "Hotel Indonesia",
                        "Jakarta"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(2, "Westin Hotel", 'assets/images/space/space2.png',
                        "4.0", "Rp.120.000", "Cibaduyut", "Bandung"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(3, "Mawar Hotel", 'assets/images/space/space3.png',
                        "5.0", "Rp.200.000", "leuwiseeng", "Majalengka"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE: TIPS
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Tips & Guidance",
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsCard(
                    Tips(1, "City Guidelines", "20 Apr",
                        'assets/images/tips/tips1.png'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(2, "Jakarta Fairship", "11 Dec",
                        'assets/images/tips/tips2.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 75 + edge,
            ),
          ],
        ),
      ),
    );
  }
}
