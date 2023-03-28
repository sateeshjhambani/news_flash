import 'package:flutter/material.dart';
import 'config/router/app_router.gr.dart';
import 'package:oktoast/oktoast.dart';

import 'config/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: AppTheme.light,
      ),
    );
  }
}
