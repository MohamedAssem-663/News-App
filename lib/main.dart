import 'package:flutter/material.dart';
import 'package:news_app/core/Utils/app_router.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
    );
  }
}
