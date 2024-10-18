import 'package:flutter_bloc/flutter_bloc.dart';

import '../../db/db.dart';
import '../../models/game.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  List<Game> gameList = [];
  Game selectedGame = Game();

  GameBloc() : super(GameInitial()) {
    on<LoadGameEvent>((event, emit) async {
      emit(GameLoadingState());
      if (event.id == 0) {
        gameList = List.generate(
          600,
          (index) {
            return Game(active: false);
          },
        );
        emit(GameLoadedState(gameList: gameList));
      } else {
        gameList = await getGames(event.id);
        await Future.delayed(const Duration(seconds: 1), () {
          emit(GameLoadedState(gameList: gameList));
        });
      }
    });

    on<SelectGameEvent>((event, emit) {
      for (Game game in gameList) {
        if (game == event.game) selectedGame = game;
      }
      emit(GameLoadedState(gameList: gameList));
    });

    on<ChangeColorEvent>((event, emit) {
      for (Game game in gameList) {
        if (game == selectedGame) {
          game.color = event.color;
          game.active = true;
        }
      }
      emit(GameLoadedState(gameList: gameList));
    });

    on<SaveGameEvent>((event, emit) async {
      gameList = await saveGames(event.id, gameList);
      emit(GameLoadedState(gameList: gameList));
    });
  }
}
