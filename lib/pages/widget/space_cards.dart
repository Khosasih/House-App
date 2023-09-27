import 'package:flutter/material.dart';
import 'package:house_app/model/space.dart';
import 'package:house_app/pages/details/detail_page.dart';
import 'package:house_app/theme.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  const SpaceCard(this.space, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailPage()));
      },
      child: Row(
        children: [
          // ignore: sized_box_for_whitespace
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 110,
              width: 130,
              child: Stack(
                children: [
                  Image.asset(space.imageUrl),
                  // ignore: sized_box_for_whitespace
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icon/icon_stars.png',
                            height: 17,
                            width: 17,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            " ${space.rate}",
                            style: whiteTextStyle.copyWith(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${space.name} ",
                style: blackTextStyle.copyWith(fontSize: 18),
              ),
              const SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                    text: "${space.price} ",
                    style: purpleTextStyle.copyWith(fontSize: 16),
                    children: [
                      TextSpan(
                          text: " /month",
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                          ))
                    ]),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "${space.address}, ${space.city} ",
                style: greyTextStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
