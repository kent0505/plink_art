import 'package:flutter/material.dart';

import '../../../core/utils.dart';
import '../widgets/game_card.dart';
import '../widgets/title_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        SizedBox(height: 45 + getStatusBar(context)),
        const TitleCard(),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameCard(1),
            SizedBox(width: 16),
            GameCard(2),
          ],
        ),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameCard(3),
            SizedBox(width: 16),
            GameCard(4),
          ],
        ),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameCard(5),
            SizedBox(width: 16),
            GameCard(6),
          ],
        ),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameCard(7),
            SizedBox(width: 16),
            GameCard(8),
          ],
        ),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameCard(9),
            SizedBox(width: 16),
            SizedBox(width: 168),
          ],
        ),
        const SizedBox(height: 100),
      ],
    );
  }
}
