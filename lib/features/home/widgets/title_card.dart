import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    super.key,
    this.id = 1,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(58),
      child: Container(
        height: 80,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff2C1153),
              Color(0xff53018C),
              Color(0xff2C1153),
            ],
          ),
        ),
        child: Stack(
          children: [
            SvgPicture.asset('assets/choose$id.svg'),
            Positioned(
              top: 2,
              left: 11,
              child: SvgPicture.asset('assets/title$id.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
