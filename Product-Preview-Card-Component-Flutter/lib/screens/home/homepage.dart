import 'package:flutter/material.dart';
import 'package:product_preview_card_component_flutter/data/fake_data.dart';
import 'package:product_preview_card_component_flutter/models/product.dart';
import 'package:product_preview_card_component_flutter/screens/home/widgets/product_card.dart';
import 'package:product_preview_card_component_flutter/utils/constants.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Product product = FakeData.perfumeProduct;

    return Scaffold(
      backgroundColor: Constants.colorCream,
      body: Center(
        child: ProductCard(product: product),
      ),
    );
  }
}
