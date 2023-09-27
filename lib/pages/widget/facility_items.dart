import 'package:flutter/material.dart';
import 'package:house_app/theme.dart';

class FacilityItems extends StatelessWidget {
  final String name;
  final int total;
  final String imageUrl;
  const FacilityItems(this.name, this.total, this.imageUrl,{super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
              text: "$total",
              style: purpleTextStyle.copyWith(fontSize: 14),
              children: [
                TextSpan(
                  // ignore: unnecessary_string_interpolations
                  text: "$name",
                  style: regularTextStyle.copyWith(fontSize: 14),
                ),
              ]),
        ),
      ],
    );
  }
}
