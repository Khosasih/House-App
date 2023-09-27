import 'package:flutter/material.dart';
import 'package:house_app/pages/error_page.dart';
import 'package:house_app/pages/widget/facility_items.dart';
import 'package:house_app/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    bool isFavorite = true;
    const phone = 'tel:+6283804407372';
    const url = 'https://maps.app.goo.gl/bgJRDGNWnTZ3xm5BA';

    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
        backgroundColor: purpleColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)));
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/city/thumbnail.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 320,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 5,
                          width: 50,
                          decoration: BoxDecoration(
                            color: greyColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //NOTE: TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kuretakeso Hott",
                                  style: blackTextStyle.copyWith(fontSize: 22),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: 'Rp.150.000',
                                    style:
                                        purpleTextStyle.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                        text: ' /month',
                                        style: greyTextStyle.copyWith(
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/icon/icon_stars.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon/icon_stars.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon/icon_stars.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon/icon_stars.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon/icon_stars.png',
                                  width: 20,
                                  color: const Color(0xff989BA1),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //NOTE: MAIN FACILITIES
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          "Main Faicilites",
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItems(' Kitchen', 2,
                                'assets/images/icon/icon_kitchen.png'),
                            FacilityItems(' Bedroom', 3,
                                'assets/images/icon/icon_bedroom.png'),
                            FacilityItems(' Big cupboard', 3,
                                'assets/images/icon/icon_cupboard.png'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //NOTES: PHOTO
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          "Photos",
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: edge),
                            // ignore: avoid_unnecessary_containers
                            ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.asset(
                                'assets/images/photo1.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.asset(
                                'assets/images/photo2.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.asset(
                                'assets/images/photo1.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.asset(
                                'assets/images/photo3.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: edge,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //NOTE: LOCATION
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          "Location",
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jl. Komando 3/3 No.3 \nJakarta Selatan",
                              style: greyTextStyle.copyWith(fontSize: 14),
                            ),
                            InkWell(
                              onTap: () async {
                                if (await canLaunchUrl(Uri.parse(url))) {
                                  launchUrl(Uri.parse(url));
                                } else {
                                  // ignore: use_build_context_synchronously
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ErrorPage()));
                                }
                              },
                              child: Image.asset(
                                'assets/images/icon/btn_pin.png',
                                width: 40,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: edge),
                            height: 50,
                            width:
                                MediaQuery.of(context).size.width - (7 * edge),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: raisedButtonStyle,
                              child: Text(
                                "Book Now",
                                style: whiteTextStyle.copyWith(fontSize: 18),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          // ignore: sized_box_for_whitespace
                          Container(
                            margin: EdgeInsets.only(right: edge),
                            height: 50,
                            width: 70,
                            child: ElevatedButton(
                                onPressed: () {
                                  launchUrl(Uri.parse(phone));
                                },
                                style: raisedButtonStyle,
                                child: const Icon(Icons.call)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/icon/btn_back.png',
                      width: 40,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: isFavorite == true
                        ? Image.asset(
                            'assets/images/icon/btn_wishlist.png',
                            width: 40,
                          )
                        : Image.asset(
                            'assets/images/icon/btn_wishlist_on.png',
                            width: 40,
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
