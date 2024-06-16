import 'package:auto_route/auto_route.dart';

import '../../features/home/presentation/pages/add_new_place/add_new_place_page.dart';
import '../../features/home/presentation/pages/home/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Page,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          path: '/home',
        ),
        AutoRoute(
          page: AddNewPlaceRoute.page,
          path: '/add-new-place',
        ),
      ];
}
