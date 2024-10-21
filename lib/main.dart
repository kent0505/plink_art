import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/blocs/color/color_bloc.dart';
import 'core/config/router.dart';
import 'core/config/themes.dart';
import 'core/db/db.dart';
import 'core/utils.dart';
import 'core/blocs/home/home_bloc.dart';
import 'core/blocs/game/game_bloc.dart';
import 'core/blocs/music/music_bloc.dart';

void main() async {
  await initHive();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImages(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeBloc()),
        BlocProvider(create: (context) => GameBloc()),
        BlocProvider(create: (context) => MusicBloc()),
        BlocProvider(create: (context) => ColorBloc()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: theme,
        routerConfig: routerConfig,
      ),
    );
  }
}
