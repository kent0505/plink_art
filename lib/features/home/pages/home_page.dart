import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:audioplayers/audioplayers.dart';

import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/blocs/home/home_bloc.dart';
import '../widgets/nav_bar.dart';
import 'main_page.dart';
import 'myworks_page.dart';
import 'settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  final player = AudioPlayer();
  bool playing = false;

  void onSound() {
    setState(() {
      if (playing) {
        player.pause();
        playing = false;
      } else {
        player.play(AssetSource('music.mp3'));
        player.setReleaseMode(ReleaseMode.loop);
        playing = true;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    // onSound();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      player.pause();
      player.getCurrentPosition().then((position) {
        if (position != null && position.inMilliseconds > 0) {
          playing = true;
        } else {
          playing = false;
        }
      });
    } else if (state == AppLifecycleState.resumed) {
      if (playing) player.resume();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    player.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Stack(
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeSettings) return const SettingsPage();

              if (state is HomeMyworks) return const MyworksPage();

              return const MainPage();
            },
          ),
          const NavBar(),
        ],
      ),
    );
  }
}
