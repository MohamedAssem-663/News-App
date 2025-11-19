import 'package:go_router/go_router.dart';
import 'package:news_app/views/home_view.dart';

import 'package:news_app/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = "/home";
  static final router = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => const Splash()),
      GoRoute(path: "/home", builder: (context, state) => const HomeView()),
    ],
  );
}
