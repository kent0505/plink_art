import 'package:flutter/material.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/widgets/ico_button.dart';
import '../../../core/widgets/text_r.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(width: 30),
              IcoButton(back: true),
              Spacer(),
              TextMain('Privacy Policy', fontSize: 24),
              Spacer(),
              SizedBox(width: 60),
            ],
          ),
          SizedBox(height: 40),
          TextMain('Introduction', fontSize: 20),
          SizedBox(height: 12),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'We at Wasai LLC respect the privacy of your personal information and, as such, make every effort to ensure your information is protected and remains private. As the owner and operator of loremipsum.io (the "Website") hereafter referred to in this Privacy Policy as "Lorem Ipsum", "us", "our" or "we", we have provided this Privacy Policy to explain how we collect, use, share and protect information about the users of our Website (hereafter referred to as “user”, “you” or "your"). For the purposes of this Agreement, any use of the terms "Lorem Ipsum", "us", "our" or "we" includes Wasai LLC, without limitation. We will not use or share your personal information with anyone except as described in this Privacy Policy.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: Fonts.regular,
                height: 1.4,
              ),
            ),
          ),
          SizedBox(height: 30),
          TextMain('Introduction', fontSize: 20),
          SizedBox(height: 12),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Lorem Ipsum does not knowingly collect personally identifiable information (PII) from persons under the age of 13. If you are under the age of 13, please do not provide us with information of any kind whatsoever. If you have reason to believe that we may have accidentally received information from a child under the age of 13, please contact us immediately at legal@wasai.co. If we become aware that we have inadvertently received Personal Information from a person under the age of 13, we will delete such information from our records.Lorem Ipsum does not knowingly collect personally identifiable information (PII) from persons under the age of 13. If you are under the age of 13, please do not provide us with information of any kind whatsoever. If you have reason to believe that we may have accidentally received information from a child under the age of 13, please contact us immediately at legal@wasai.co. If we become aware that we have inadvertently received Personal Information from a person under the age of 13, we will delete such information from our records.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: Fonts.regular,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
