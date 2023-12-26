import 'package:athletic_hub/app/feature/registration/domain/bloc/authorization_bloc.dart';
import 'package:athletic_hub/app/util/themes/app_theme.dart';
import 'package:athletic_hub/app/util/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'feature/event_create/presentation/photo_bloc/photobloc.dart';

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
          return MultiBlocProvider(
            providers: [
              BlocProvider<AuthorizationBloc>(
                create: (context) => AuthorizationBloc()..add(EnterEvent()),
              ),
              BlocProvider<PhotoBloc>(
                create: (context) => PhotoBloc()..add(NoSetPhoto()),
              ),
            ],
            child: ScreenUtilInit(
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
                    localizationsDelegates: [
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                    ],
                    supportedLocales: [
                      const Locale('ru', 'RU'),
                    ],
                  ),
                );
              },
            ),
          );
        });
  }
}
