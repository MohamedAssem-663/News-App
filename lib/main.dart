import 'package:flutter/material.dart';
import 'package:news_app/core/Utils/app_router.dart';

void main() {
  runApp(const NewsCloud());
}

class NewsCloud extends StatelessWidget {
  const NewsCloud({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'NewaCloud',
      debugShowCheckedModeBanner: false,
    );
  }
}
