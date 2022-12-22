import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_homepage/Data/fake_data.dart';
import 'package:news_homepage/screen_configuration.dart';
import 'package:news_homepage/style.dart';
import 'package:news_homepage/widgets/main_content.dart';
import 'package:news_homepage/widgets/news.dart';
import 'package:news_homepage/widgets/popular.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  static const routeName = "Homepage";

  // TODO: Decorate Drawer both Web and Mobile

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
          const SizedBox(height: StyleDimension.marginBetweenSection / 2),
          const Popular(),
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
        Popular(),
      ],
    );
  }

  // Component
  Widget _buildMobileDrawer() {
    return Drawer(
      elevation: 5.0,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: FakeData.shared.menus.map((menu) {
          return TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(StyleDimension.paddingAround * 1.5),
              alignment: Alignment.centerLeft,
            ),
            onPressed: () {},
            child: Text(
              menu.name,
              style: TextStyle(
                fontSize: StyleFontSize.subHeader,
                fontWeight: FontWeight.bold,
                color: StyleColor.veryDarkBlue,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  // Component
  List<Widget> _buildWebMenuBar() {
    List<Widget> mapped = FakeData.shared.menus.map((e) {
      return TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(StyleColor.offWhite),
          padding: MaterialStateProperty.all(
            const EdgeInsets.all(StyleDimension.paddingAround),
          ),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.hovered)) {
              return StyleColor.softRed;
            }
            return StyleColor.darkGrayishBlue;
          }),
        ),
        onPressed: () {},
        child: Text(e.name),
      );
    }).toList();

    // Add Margin to the Right of AppBar Actions
    return mapped;
  }

  @override
  Widget build(BuildContext context) {
    var customIconMobileDrawer = [
      Builder(builder: (context) {
        return IconButton(
          onPressed: () => Scaffold.of(context).openEndDrawer(),
          icon: SvgPicture.asset("assets/images/icon-menu.svg"),
        );
      }),
    ];

    return Scaffold(
      backgroundColor: StyleColor.offWhite,
      appBar: AppBar(
        backgroundColor: StyleColor.offWhite,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: StyleDimension.paddingAround),
          child: SvgPicture.asset("assets/images/logo.svg"),
        ),
        actions: ScreenConfiguration.isMobileLayout(context)
            ? customIconMobileDrawer
            : _buildWebMenuBar(),
      ),
      endDrawer: ScreenConfiguration.isMobileLayout(context)
          ? _buildMobileDrawer()
          : null,
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
