
// @AdaptiveAutoRouter(
//   routes: [
//     AutoRoute(page: BreakingNewsView, initial: true),
//     AutoRoute(page: ArticleDetailsView),
//     AutoRoute(page: SavedArticlesView),
//   ],
// )

import 'package:auto_route/auto_route.dart';
import '../../HomeScreen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
  ],
)
class $AppRouter {}