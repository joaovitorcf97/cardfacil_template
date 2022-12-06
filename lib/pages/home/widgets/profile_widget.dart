import 'package:badges/badges.dart';
import 'package:cardfacil_template/core/theme/app_theme.dart';
import 'package:cardfacil_template/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                  'https://instagram.fipn5-1.fna.fbcdn.net/v/t51.2885-19/269045999_609850296901760_3084610116652543238_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fipn5-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=_cNPfeIxCHkAX-XDc_F&edm=ABmJApABAAAA&ccb=7-5&oh=00_AfDRXKPgFeL8UqaSBeo47xnqdHqEWCyXLl2H4wk_dqOw1w&oe=63939D88&_nc_sid=6136e7'),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Bom dia ☀️',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Lukas Miranda',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
        Badge(
          position: BadgePosition.topEnd(top: 12, end: 12),
          badgeColor: AppTheme.yellow600,
          elevation: 2,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 33,
            ),
          ),
        ),
      ],
    );
  }
}
