// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:paintroid/ui/pages/onboarding_page/components/onboarding_page_bottom_nav_bar.dart';
import 'package:paintroid/ui/themes/theme/color_schemes.dart';

class BottomNavigationBarContainer extends StatelessWidget {
  final List<BottomNavigationBarItem> navBarItems;
  final List<VoidCallback> onPressedFunctions;

  const BottomNavigationBarContainer({
    Key? key,
    required this.navBarItems,
    required this.onPressedFunctions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: lightColorScheme.surface,
      child: OnboardingPageBottomNavigationBar(
        onPressedFunctions: onPressedFunctions,
        barItems: navBarItems,
      ),
    );
  }
}