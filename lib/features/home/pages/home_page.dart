import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/blocs/home/home_bloc.dart';
import '../widgets/nav_bar.dart';
import 'main_page.dart';
import 'myworks_page.dart';
import 'settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
