import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_homepage/screen_configuration.dart';
import 'package:news_homepage/style.dart';
import 'package:news_homepage/widgets/main_content.dart';
import 'package:news_homepage/widgets/news.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  static const routeName = "Homepage";

  Widget _buildWebLayout() {
    return SizedBox(
      width: StyleDimension.maximumPageWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              MainContent(),
              SizedBox(
                width: StyleDimension.marginBetweenSection / 2,
              ),
              News(),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [],
          )
        ],
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        MainContent(),
        SizedBox(height: StyleDimension.marginBetweenSection),
        News(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleColor.offWhite,
      appBar: AppBar(
        backgroundColor: StyleColor.offWhite,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: StyleDimension.paddingAround),
          child: SvgPicture.asset("assets/images/logo.svg"),
        ),
        actions: const [],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(StyleDimension.paddingAround),
            child: ScreenConfiguration.getScreenWidth(context) <
                    ScreenConfiguration.minimumWebWidth
                ? _buildMobileLayout()
                : Center(child: _buildWebLayout()),
          ),
        ),
      ),
    );
  }
}
