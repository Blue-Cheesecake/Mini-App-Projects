import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:product_preview_card_flutter/constants/colors.dart';
import 'package:product_preview_card_flutter/constants/contents.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
            headline3: TextStyle(
                fontFamily: "Fraunces",
                fontSize: 40,
                color: C.darkCyan,
                fontWeight: FontWeight.w700),
            headline4: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.lineThrough),
            bodyText1: TextStyle(
                height: 1.55,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: C.darkGrayishBlue),
            button: TextStyle(
                fontSize: 15, color: C.cream, fontWeight: FontWeight.bold)),
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
          child: Container(
            constraints: BoxConstraints(
                minHeight:
                    (MediaQuery.of(context).size.height - notchHeight) * 0.84),
            height: (MediaQuery.of(context).size.height - notchHeight) * 0.80,
            width: MediaQuery.of(context).size.width * 0.90,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  children: [
                    SizedBox(
                        width: constraints.maxWidth,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset(
                                "assets/images/image-product-mobile.jpg"),
                          ),
                        )),
                    Container(
                      padding: const EdgeInsets.all(23),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Contents.smallHead,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            Contents.largeHead,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            Contents.bodyText,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                Contents.discountPriceString,
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                Contents.originalPriceString,
                                style: Theme.of(context).textTheme.headline4,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(C.darkCyan),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 18),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.shopping_cart),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Add to Cart"),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
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
