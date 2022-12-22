import 'package:flutter/material.dart';
import 'package:news_homepage/Data/fake_data.dart';
import 'package:news_homepage/screen_configuration.dart';
import 'package:news_homepage/style.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var contents = FakeData.homepage.popularsList.map((e) {
      int index = FakeData.homepage.popularsList.indexOf(e);

      var listitle = ListTile(
        //TODO: Increase Image Size
        leading: Image.asset(e.imagePath!),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Number
            Text(
              "0${index + 1}",
              style: TextStyle(
                fontSize: StyleFontSize.header,
                fontWeight: FontWeight.bold,
                color: StyleColor.grayishBlue,
              ),
            ),

            // Header
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.hovered)) {
                    return StyleColor.softRed;
                  }
                  return StyleColor.veryDarkBlue;
                }),
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              child: Text(
                e.title,
                style: const TextStyle(
                  fontSize: StyleFontSize.subHeader,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        subtitle: Text(
          e.subTitle,
          style: TextStyle(
            fontSize: StyleFontSize.paragraph,
            height: StyleDimension.paragraphHeight,
            color: StyleColor.darkGrayishBlue,
          ),
        ),
      );

      return ScreenConfiguration.isMobileLayout(context)
          ? listitle
          : Expanded(child: listitle);
    }).toList();

    if (ScreenConfiguration.isMobileLayout(context)) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: contents,
      );
    } else {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: contents,
      );
    }
  }
}
