import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/blocs/game/game_bloc.dart';
import '../../../core/models/game.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../widgets/color_widget.dart';
import '../widgets/game_field.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key, required this.id});

  final int id;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  void onClear() {
    context.read<GameBloc>().add(ClearGameEvent(id: widget.id));
  }

  void onSave() {
    context.read<GameBloc>().add(SaveGameEvent(id: widget.id));
    context.pop();
  }

  @override
  void initState() {
    super.initState();
    context.read<GameBloc>().add(LoadGameEvent(id: widget.id));
  }

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
          Expanded(
            child: BlocBuilder<GameBloc, GameState>(
              builder: (context, state) {
                if (state is GameLoadedState) {
                  return Column(
                    children: [
                      const Spacer(),
                      _Fields(state.gameList, 0),
                      _Fields(state.gameList, 20),
                      _Fields(state.gameList, 40),
                      _Fields(state.gameList, 60),
                      _Fields(state.gameList, 80),
                      _Fields(state.gameList, 100),
                      _Fields(state.gameList, 120),
                      _Fields(state.gameList, 140),
                      _Fields(state.gameList, 160),
                      _Fields(state.gameList, 180),
                      _Fields(state.gameList, 200),
                      _Fields(state.gameList, 220),
                      _Fields(state.gameList, 240),
                      _Fields(state.gameList, 260),
                      _Fields(state.gameList, 280),
                      _Fields(state.gameList, 300),
                      _Fields(state.gameList, 320),
                      _Fields(state.gameList, 340),
                      _Fields(state.gameList, 360),
                      _Fields(state.gameList, 380),
                      _Fields(state.gameList, 400),
                      _Fields(state.gameList, 420),
                      _Fields(state.gameList, 440),
                      _Fields(state.gameList, 460),
                      _Fields(state.gameList, 480),
                      _Fields(state.gameList, 500),
                      _Fields(state.gameList, 520),
                      _Fields(state.gameList, 540),
                      _Fields(state.gameList, 560),
                      _Fields(state.gameList, 580),
                      const Spacer(),
                      ColorWidget(id: widget.id),
                      const Spacer(),
                    ],
                  );
                }

                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _Fields extends StatelessWidget {
  const _Fields(
    this.gameList,
    this.range,
  );

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
