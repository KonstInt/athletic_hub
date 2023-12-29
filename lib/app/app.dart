import 'package:athletic_hub/app/util/themes/app_theme.dart';
import 'package:athletic_hub/app/util/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const webSize = Size(1200, 1900);
    return ScreenUtilInit(
      designSize: webSize,
      minTextAdapt: true,
      rebuildFactor: (_, __) => true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            routerConfig: routerSettings,
          ),
        );
      },
    );
  }
}
