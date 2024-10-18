import 'package:flutter/material.dart';

import '../../../core/models/game.dart';
import '../../../core/widgets/cuper_button.dart';

class GameField extends StatelessWidget {
  const GameField({super.key, required this.game});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return CuperButton(
      onPressed: () {},
      minSize: 18,
      child: Container(
        height: 18,
        width: 18,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: game.color,
          boxShadow: [
            if (!game.active)
              BoxShadow(
                offset: const Offset(0, 2),
                color: Colors.white.withOpacity(0.25),
              ),
          ],
        ),
        // child: Center(
        //   child: TextMain(
        //     game.id.toString(),
        //     fontSize: 8,
        //   ),
        // ),
      ),
    );
  }
}
