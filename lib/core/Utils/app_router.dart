import 'package:go_router/go_router.dart';

import 'package:news_app/views/home_view.dart';

abstract class AppRouter {
  static const kHomeView = "/home";
  static const kcategoryView = "/categoryView";
  static final router = GoRouter(
    routes: [GoRoute(path: "/", builder: (context, state) => const HomeView())],
  );
}
