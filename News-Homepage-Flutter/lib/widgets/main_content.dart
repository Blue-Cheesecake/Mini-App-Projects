import 'package:flutter/material.dart';
import 'package:news_homepage/Data/fake_data.dart';
import 'package:news_homepage/screen_configuration.dart';
import 'package:news_homepage/style.dart';

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildImage(context),
        _buildHeader(),
        _buildSubTitle(),
        _buildReadMoreButton(),
      ],
    );
  }

  Widget _buildWebLayout(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [],
        ),
      ],
    );
  }

  // Component
  Widget _buildHeader() {
    return Text(
      FakeData.homepage.mainContent.title,
      style: TextStyle(
        fontSize: StyleFontSize.headerMainContent,
        fontWeight: FontWeight.w800,
        color: StyleColor.veryDarkBlue,
      ),
    );
  }

  // Component
  Widget _buildSubTitle() {
    return Text(
      FakeData.homepage.mainContent.subTitle,
      style: TextStyle(
        fontSize: StyleFontSize.paragraph,
        color: StyleColor.darkGrayishBlue,
      ),
    );
  }

  // Component
  Widget _buildImage(BuildContext context) {
    return Image.asset(ScreenConfiguration.getScreenWidth(context) <
            ScreenConfiguration.minimumWebWidth
        ? FakeData.homepage.mainContent.mobileImagePath!
        : FakeData.homepage.mainContent.imagePath!);
  }

  // Component
  Widget _buildReadMoreButton() {
    return ElevatedButton(onPressed: () {}, child: Text("READ MORE"));
  }

  @override
  Widget build(BuildContext context) {
    return ScreenConfiguration.getScreenWidth(context) <
            ScreenConfiguration.minimumWebWidth
        ? _buildMobileLayout(context)
        : _buildWebLayout(context);
  }
}
