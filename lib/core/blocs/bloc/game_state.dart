part of 'game_bloc.dart';

abstract class GameState {}

class GameInitial extends GameState {}

class GameLoadingState extends GameState {}

class GameLoadedState extends GameState {
  final List<Game> gameList;
  GameLoadedState({required this.gameList});
}
