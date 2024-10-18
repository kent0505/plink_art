import 'package:flutter/material.dart';

import '../../../core/models/game.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../widgets/game_field.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  List<Game> gameList = List.generate(
    600,
    (index) {
      return Game(id: index + 1);
    },
  );

  void onClear() {}

  void onSave() {}

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      game: true,
      body: Column(
        children: [
          const SizedBox(height: 60),
          CustomAppbar(
            onClear: onClear,
            onSave: onSave,
          ),
          const Spacer(),
          _Fields(gameList, 0),
          _Fields(gameList, 20),
          _Fields(gameList, 40),
          _Fields(gameList, 60),
          _Fields(gameList, 80),
          _Fields(gameList, 100),
          _Fields(gameList, 120),
          _Fields(gameList, 140),
          _Fields(gameList, 160),
          _Fields(gameList, 180),
          _Fields(gameList, 200),
          _Fields(gameList, 220),
          _Fields(gameList, 240),
          _Fields(gameList, 260),
          _Fields(gameList, 280),
          _Fields(gameList, 300),
          _Fields(gameList, 320),
          _Fields(gameList, 340),
          _Fields(gameList, 360),
          _Fields(gameList, 380),
          _Fields(gameList, 400),
          _Fields(gameList, 420),
          _Fields(gameList, 440),
          _Fields(gameList, 460),
          _Fields(gameList, 480),
          _Fields(gameList, 500),
          _Fields(gameList, 520),
          _Fields(gameList, 540),
          _Fields(gameList, 560),
          _Fields(gameList, 580),
          const Spacer(),
        ],
      ),
    );
  }
}

class _Fields extends StatelessWidget {
  const _Fields(this.gameList, this.range);

  final List<Game> gameList;
  final int range;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        20,
        (index) {
          return GameField(
            game: gameList[index + range],
          );
        },
      ),
    );
  }
}
