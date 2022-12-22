import 'package:flutter/material.dart';
import 'package:news_homepage/Data/fake_data.dart';
import 'package:news_homepage/screen_configuration.dart';
import 'package:news_homepage/style.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  Widget _buildNewHeader() {
    return Text(
      "New",
      style: TextStyle(
        fontSize: StyleFontSize.header,
        fontWeight: FontWeight.bold,
        color: StyleColor.softOrange,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<New> newsList = FakeData.homepage.newList;
    return Container(
      width: ScreenConfiguration.isMobileLayout(context)
          ? null
          : StyleDimension.newsBoxWidth,
      padding: const EdgeInsets.all(StyleDimension.paddingAround),
      decoration: BoxDecoration(
        color: StyleColor.veryDarkBlue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildNewHeader(),
          const SizedBox(height: StyleDimension.paddingAround * 2),
          ...newsList.map((val) {
            int index = newsList.indexOf(val);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    val.title,
                    style: TextStyle(
                      fontSize: StyleFontSize.subHeader,
                      fontWeight: FontWeight.bold,
                      color: StyleColor.offWhite,
                    ),
                  ),
                ),
                const SizedBox(height: StyleDimension.paddingAround / 2),
                Text(
                  val.subTitle,
                  style: TextStyle(
                    fontSize: StyleFontSize.paragraph,
                    color: StyleColor.grayishBlue,
                  ),
                ),
                const SizedBox(height: StyleDimension.paddingAround * 2),
                index + 1 != newsList.length
                    ? Divider(
                        height: 10,
                        thickness: 1,
                        color: StyleColor.darkGrayishBlue,
                      )
                    : const SizedBox.shrink(),
                index + 1 != newsList.length
                    ? const SizedBox(height: StyleDimension.paddingAround * 2)
                    : const SizedBox.shrink(),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}
