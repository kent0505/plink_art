import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../models/game.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  List<Game> gameList = [];
  List mygames = [];

  GameBloc() : super(GameInitial()) {
    on<LoadGameEvent>((event, emit) async {
      final box = await Hive.openBox('plinkartbox');
      List data = box.get('game${event.id}') ??
          List.generate(
            600,
            (index) {
              return Game(id: index + 1);
            },
          );
      gameList = data.cast<Game>();
      emit(GameLoadedState(gameList: gameList));
    });

    on<ChangeColorEvent>((event, emit) {
      for (Game game in gameList) {
        if (game.id == event.game.id) {
          game.color = event.game.color;
          game.active = true;
        }
      }
      emit(GameLoadedState(gameList: gameList));
    });

    on<SaveGameEvent>((event, emit) async {
      final box = await Hive.openBox('plinkartbox');
      box.put('game${event.id}', gameList);
      gameList = await box.get('game${event.id}');
      emit(GameLoadedState(gameList: gameList));
    });
  }
}
