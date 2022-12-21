class FakeData {
  static HomepageData homepage = HomepageData();
}

class MapRouteName {
  final String name;
  final String uri;

  MapRouteName(this.name, this.uri);
}

class New {
  final String title;
  final String subTitle;
  final String? imagePath;
  final String? mobileImagePath;

  New(this.title, this.subTitle, {this.imagePath, this.mobileImagePath});
}

class HomepageData {
  /// Map Name --> URL
  final List<MapRouteName> menuList = [
    MapRouteName("Home", "#"),
    MapRouteName("New", "#"),
    MapRouteName("Popular", "#"),
    MapRouteName("Trending", "#"),
    MapRouteName("Categories", "#"),
  ];

  final List<New> newList = [
    New("Hydrogen VS Electric Cars",
        "Will hydrogen-fueled cars ever catch up to EVs?"),
    New("The Downsides of AI Artistry",
        "What are the possible adverse effects of on-demand AI image generation?"),
    New("Is VC Funding Drying Up?",
        "Private funding by VC firms is down 50% YOY. We take a look at what that means"),
  ];

  final New mainContent = New(
    "The Bright Future of Web 3.0?",
    "We dive into the next evolution of the web that claims to put the power of the platforms back into the hands of the people. But is it really? fulfilling its promise?",
    imagePath: "assets/images/image-web-3-desktop.jpg",
    mobileImagePath: "assets/images/image-web-3-mobile.jpg",
  );

  final List<New> popularsList = [
    New(
      "Reviving Retro PCs",
      "What happens when old PCs are given modern upgrades?",
      imagePath: "assets/images/image-retro-pcs.jpg",
    ),
    New(
      "Top 10 Laptops of 2022",
      "Our best picks for various needs and budgets.",
      imagePath: "assets/images/image-top-laptops.jpg",
    ),
    New(
      "The Growth of Gaming",
      "How the pandemic has sparked fresh opportunities.",
      imagePath: "assets/images/image-gaming-growth.jpg",
    ),
  ];
}
