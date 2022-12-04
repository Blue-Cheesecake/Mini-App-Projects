import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:product_preview_card_component_flutter/models/product.dart';
import 'package:product_preview_card_component_flutter/utils/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final Product product;
  final containerWidth = kIsWeb ? 500.0 : 370.0;
  final imageHeight = kIsWeb ? 300.0 : null;

  Widget _addToCardButton() {
    return SizedBox(
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Constants.colorDarkCyan),
            shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.shopping_cart_outlined),
              SizedBox(width: 10),
              Text(
                "Add to Cart",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text _productType() {
    return Text(
      product.productType,
      style: TextStyle(
        color: Constants.colorDarkGrayishBlue,
        letterSpacing: 5,
        fontSize: 14,
      ),
    );
  }

  Text _productTitle() {
    return Text(
      product.title,
      style: TextStyle(
        height: 0.9,
        color: Constants.colorVeryDarkBlue,
        fontSize: 40,
        fontFamily: "Fracunces",
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Text _productDescription() {
    return Text(
      product.description,
      style: TextStyle(
        height: 1.5,
        color: Constants.colorDarkGrayishBlue,
        fontSize: 15.3,
      ),
    );
  }

  Row _pricesRow() {
    return Row(
      children: [
        Text(
          "\$${product.realPrice}",
          style: TextStyle(
            color: Constants.colorDarkCyan,
            fontFamily: "Fracunces",
            fontSize: 35,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 20),
        Text(
          "\$${product.originalPrice}",
          style: TextStyle(
            color: Constants.colorDarkGrayishBlue,
            fontSize: 14,
            decoration: TextDecoration.lineThrough,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final elements = [
      Image.asset(
        product.imagePath,
        width: containerWidth,
        height: imageHeight,
      ),
      Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _productType(),
            const SizedBox(height: 25),
            _productTitle(),
            const SizedBox(height: 25),
            _productDescription(),
            const SizedBox(height: 25),
            _pricesRow(),
            const SizedBox(height: 25),
            _addToCardButton(),
          ],
        ),
      )
    ];

    final children = kIsWeb
        ? Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: elements,
          )
        : Column(
            mainAxisSize: MainAxisSize.min,
            children: elements,
          );

    return Container(
      width: containerWidth,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Constants.colorWhite,
        borderRadius: const BorderRadius.all(Radius.circular(13)),
      ),
      child: children,
    );
  }
}
