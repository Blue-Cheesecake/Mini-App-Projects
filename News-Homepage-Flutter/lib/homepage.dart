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
      child: ListView(
        padding: EdgeInsets.zero,
        children: FakeData.shared.menus.map((menu) {
          return TextButton(
            onPressed: () {},
            child: Text(menu.name),
          );
        }).toList(),
      ),
    );
  }

  // Component
  List<Widget> _buildWebMenuBar() {
    return FakeData.shared.menus.map((e) {
      return TextButton(
        onPressed: () {},
        child: Text(e.name),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> webMenuBar = _buildWebMenuBar();
    var customIconMobileDrawer = [
      Builder(builder: (context) {
        return ScreenConfiguration.isMobileLayout(context)
            ? IconButton(
          onPressed: () => Scaffold.of(context).openEndDrawer(),
          icon: SvgPicture.asset("assets/images/icon-menu.svg"),
        )
            : const SizedBox.shrink();
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
            : webMenuBar,
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
