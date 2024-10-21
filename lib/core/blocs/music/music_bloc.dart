import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils.dart';

part 'music_event.dart';
part 'music_state.dart';

class MusicBloc extends Bloc<MusicEvent, MusicState> {
  final player = AudioPlayer();
  bool playing = false;

  MusicBloc() : super(MusicInitial()) {
    on<StartMusicEvent>((event, emit) {
      if (playing) {
        player.pause();
        playing = false;
      } else {
        player.play(AssetSource('music.mp3'));
        player.setReleaseMode(ReleaseMode.loop);
        playing = true;
      }
      emit(MusicPlayingState());
    });

    on<PauseMusicEvent>((event, emit) {
      player.pause();
      player.getCurrentPosition().then((position) {
        if (position != null && position.inMilliseconds > 0) {
          playing = true;
        } else {
          playing = false;
        }
      });
      emit(MusicPlayingState());
    });

    on<ResumeMusicEvent>((event, emit) {
      if (playing) player.resume();
      emit(MusicPlayingState());
    });

    on<ChangeVolumeEvent>((event, emit) async {
      await player.setVolume(event.volume);
      emit(MusicPlayingState());
    });

    on<StopMusicEvent>((event, emit) async {
      await player.stop();
      logger('MUSIC STOPPED');
      emit(MusicPlayingState());
    });
  }
}
