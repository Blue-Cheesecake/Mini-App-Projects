import 'package:flutter/material.dart';
import 'package:product_preview_card_flutter/constants/colors.dart';
import 'package:product_preview_card_flutter/constants/contents.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Montserrat",
        textTheme: TextTheme(
            headline1: TextStyle(
                fontFamily: "Fraunces",
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: C.veryDarkBlue),
            headline2: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: C.darkGrayishBlue,
                letterSpacing: 4),
            bodyText1: TextStyle(
                height: 1.55,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: C.darkGrayishBlue)),
        primaryColor: C.darkCyan,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notchHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: C.cream,
      body: Center(
        child: Card(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 0,
          child: SizedBox(
            height: (MediaQuery.of(context).size.height - notchHeight) * 0.93,
            width: MediaQuery.of(context).size.width * 0.90,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  children: [
                    SizedBox(
                        width: constraints.maxWidth,
                        height: constraints.maxHeight * 0.3,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image.asset(
                              "assets/images/image-product-mobile.jpg"),
                        )),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Contents.smallHead,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Text(
                            Contents.largeHead,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            Contents.bodyText,
                            style: Theme.of(context).textTheme.bodyText1,
                          )
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
