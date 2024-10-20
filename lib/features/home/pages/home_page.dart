import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plink_art/core/utils.dart';

import '../../../core/blocs/music/music_bloc.dart';
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
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    context.read<MusicBloc>().add(StartMusicEvent());
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      context.read<MusicBloc>().add(PauseMusicEvent());
    } else if (state == AppLifecycleState.resumed) {
      context.read<MusicBloc>().add(ResumeMusicEvent());
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    logger(getWidth(context));
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
