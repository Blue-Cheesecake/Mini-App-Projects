import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

final class HomepageAssets {
  const HomepageAssets._();

  static Widget get downArrow => SvgPicture.asset(
        'assets/images/icon-arrow.svg',
        width: 35,
        height: 35,
      );
}
