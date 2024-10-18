import 'package:flutter/material.dart';

import '../../../core/utils.dart';
import '../widgets/game_card.dart';
import '../widgets/title_card.dart';

class MyworksPage extends StatefulWidget {
  const MyworksPage({super.key});

  @override
  State<MyworksPage> createState() => _MyworksPageState();
}

class _MyworksPageState extends State<MyworksPage> {
  @override
  void initState() {
    super.initState();
    // context.read<GameBloc>().add(LoadMygamesEvent());
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        SizedBox(height: 45 + getStatusBar(context)),
        const TitleCard(id: 2),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameCard(0),
            SizedBox(width: 16),
            SizedBox(width: 170),
          ],
        ),
        const SizedBox(height: 16),
        // BlocBuilder<GameBloc, GameState>(
        //   builder: (context, state) {
        //     if (state is MygamesLoadedState) {
        //       return Expanded(
        //         child: GridView.count(
        //           crossAxisCount: 2,
        //           children: List.generate(
        //             state.mygames.length,
        //             (index) {
        //               return const GameCard(0);
        //             },
        //           ),
        //         ),
        //       );
        //     }

        //     return Container();
        //   },
        // ),
        const SizedBox(height: 100),
      ],
    );
  }
}
