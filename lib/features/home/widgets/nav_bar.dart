import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/cuper_button.dart';
import '../../../core/widgets/text_r.dart';
import '../../../core/blocs/home/home_bloc.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 84,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(84),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffE9F514),
              Color(0xffED5732),
            ],
          ),
        ),
        child: Center(
          child: Container(
            height: 76,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(76),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff2C1153),
                  Color(0xff53018C),
                ],
              ),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _NavBarButton(
                      id: 1,
                      title: 'Gallery',
                      active: state is HomeInitial,
                      onPressed: () {
                        context.read<HomeBloc>().add(ChangePageEvent(index: 0));
                      },
                    ),
                    _NavBarButton(
                      id: 2,
                      title: 'My works',
                      active: state is HomeMyworks,
                      onPressed: () {
                        context.read<HomeBloc>().add(ChangePageEvent(index: 1));
                      },
                    ),
                    _NavBarButton(
                      id: 3,
                      title: 'Settings',
                      active: state is HomeSettings,
                      onPressed: () {
                        context.read<HomeBloc>().add(ChangePageEvent(index: 2));
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _NavBarButton extends StatelessWidget {
  const _NavBarButton({
    required this.id,
    required this.title,
    required this.active,
    required this.onPressed,
  });

  final int id;
  final String title;
  final bool active;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CuperButton(
      onPressed: onPressed,
      padding: 0,
      child: SizedBox(
        width: 62,
        child: Column(
          children: [
            const SizedBox(height: 8),
            SvgPicture.asset('assets/tab$id.svg'),
            const SizedBox(height: 2),
            TextMain(title, fontSize: 12),
            const SizedBox(height: 6),
            if (active)
              Container(
                height: 5,
                width: 63,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffE9F514),
                      Color(0xffED5732),
                    ],
                  ),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      spreadRadius: 0,
                      color: Color(0xffDCF700),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
