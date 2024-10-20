import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plink_art/core/utils.dart';

import '../../../core/blocs/game/game_bloc.dart';
import '../../../core/models/game.dart';
import '../../../core/widgets/cuper_button.dart';

class GameField extends StatelessWidget {
  const GameField({
    super.key,
    required this.game,
  });

  final Game game;

  @override
  Widget build(BuildContext context) {
    return CuperButton(
      onPressed: () {
        context.read<GameBloc>().add(SelectGameEvent(game: game));
      },
      minSize: 18,
      child: Container(
        height: getWidth(context) > 600 ? 30 : 18,
        width: getWidth(context) > 600 ? 30 : 18,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(game.color),
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
