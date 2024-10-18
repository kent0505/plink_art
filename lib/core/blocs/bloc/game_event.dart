part of 'game_bloc.dart';

abstract class GameEvent {}

class LoadGameEvent extends GameEvent {
  final int id;
  LoadGameEvent({required this.id});
}

class ChangeColorEvent extends GameEvent {
  final Game game;
  ChangeColorEvent({required this.game});
}

class SaveGameEvent extends GameEvent {
  final int id;
  SaveGameEvent({required this.id});
}
