import 'package:flutter/foundation.dart';
import 'package:product_preview_card_component_flutter/models/product.dart';

class FakeData {
  static final perfumeProduct = Product(
      !kIsWeb
          ? "images/image-product-mobile.jpg"
          : "images/image-product-desktop.jpg",
      "PERFUME",
      "Gebrielle Essence Eau De Parfum",
      "A floral, solar and voluptuous interpretation composed by Olivier Polge, Perfumer-Creator for the House of CHANEL.",
      169.99,
      149.99);
}
