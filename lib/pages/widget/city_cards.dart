import 'package:flutter/material.dart';
import 'package:house_app/model/city.dart';
import 'package:house_app/theme.dart';

class CityCard extends StatelessWidget {
  final City city;
  const CityCard(this.city, {super.key});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: const Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 150,
                  height: 120,
                  fit: BoxFit.cover,
                ),
               city.isFavorite ? Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/icon/icon_stars.png',
                        height: 17,
                        width: 17,
                      ),
                    ),
                  ),
                ) : Container(),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              city.name,
              style: blackTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
