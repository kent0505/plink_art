import 'package:flutter_bloc/flutter_bloc.dart';

part 'mygame_event.dart';
part 'mygame_state.dart';

class MygameBloc extends Bloc<MygameEvent, MygameState> {
  MygameBloc() : super(MygameInitial()) {
    on<MygameEvent>((event, emit) {});
  }
}
