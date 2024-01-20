import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multi_store/views/buyers/nav_screen/widgets/banner_widget.dart';
import 'package:multi_store/views/buyers/nav_screen/widgets/input_search_widget.dart';
import 'package:multi_store/views/buyers/nav_screen/widgets/welcome_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WelcomeTextWidget(),
        InputSearchWidget(),
        SizedBox(
          height: 20,
        ),
        BannerWidget()
      ],
    );
  }
}



