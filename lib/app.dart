import 'package:flutter/material.dart';

import 'utils/router.dart';
import 'utils/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterUtils.router,
      theme: ThemeUtils.base,
    );
  }
}
