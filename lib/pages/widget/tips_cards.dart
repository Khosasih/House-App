import 'package:flutter/material.dart';
import 'package:house_app/model/tips.dart';
import 'package:house_app/theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  const TipsCard(this.tips,{super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 4,
            ),
            Text('Updated ${tips.subTitle}', style: greyTextStyle.copyWith(fontSize: 16))
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        )
      ],
    );
  }
}
