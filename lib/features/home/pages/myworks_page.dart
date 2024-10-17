import 'package:flutter/material.dart';

import '../../../core/utils.dart';
import '../widgets/title_card.dart';

class MyworksPage extends StatelessWidget {
  const MyworksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        SizedBox(height: 45 + getStatusBar(context)),
        const TitleCard(id: 2),
      ],
    );
  }
}
