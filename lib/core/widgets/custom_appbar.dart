import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cuper_button.dart';
import 'ico_button.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.onClear,
    required this.onSave,
  });

  final void Function() onClear;
  final void Function() onSave;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        const IcoButton(back: true),
        const Spacer(),
        IcoButton(onPressed: onClear),
        const Spacer(),
        CuperButton(
          onPressed: onSave,
          child: SvgPicture.asset('assets/save.svg'),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
