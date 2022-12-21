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
        const SizedBox(height: StyleDimension.paddingAround * 1.5),
        _buildHeader(),
        const SizedBox(height: StyleDimension.paddingAround * 1.5),
        _buildSubTitle(),
        const SizedBox(height: StyleDimension.paddingAround * 1.5),
        _buildReadMoreButton(),
      ],
    );
  }

  Widget _buildWebLayout(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildImage(context),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: StyleDimension.marginBetweenSection / 3,
                  ),
                  child: _buildHeader(),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: StyleDimension.marginBetweenSection / 3,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildSubTitle(),
                      const SizedBox(
                          height: StyleDimension.marginBetweenSection / 2),
                      _buildReadMoreButton(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
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
    return Image.asset(
      ScreenConfiguration.isMobileLayout(context)
          ? FakeData.homepage.mainContent.mobileImagePath!
          : FakeData.homepage.mainContent.imagePath!,
    );
  }

  // Component
  Widget _buildReadMoreButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: StyleColor.softRed,
        padding: const EdgeInsets.symmetric(
          vertical: StyleDimension.paddingAround * 1.5,
          horizontal: StyleDimension.paddingAround * 2,
        ),
      ),
      child: Text(
        "READ MORE",
        style: TextStyle(
          letterSpacing: 5,
          fontSize: StyleFontSize.paragraph,
          fontWeight: FontWeight.w700,
          color: StyleColor.offWhite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenConfiguration.getScreenWidth(context) <
            ScreenConfiguration.minimumWebWidth
        ? _buildMobileLayout(context)
        : _buildWebLayout(context);
  }
}
