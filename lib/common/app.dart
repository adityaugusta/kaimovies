import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaimovies/common/router/kai_router.dart';
import 'package:kaimovies/utilities/ui_utils.dart';

final _router = GoRouter(routes: $appRoutes, debugLogDiagnostics: true);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
          // brightness: Brightness.light,
          // primaryColor: OOSTheme.primaryColor,
          // indicatorColor: OOSTheme.primaryColor,
          // scaffoldBackgroundColor: Colors.white,
          // appBarTheme: AppBarTheme(
          // systemOverlayStyle: SystemUiOverlayStyle.dark,
          // color: Colors.white,
          // elevation: 0,
          // iconTheme: const IconThemeData(color: OOSTheme.blackTwo),
          // titleTextStyle: _titleTextStyle(context),
          // toolbarTextStyle: _titleTextStyle(context),
          // ),
          // bottomSheetTheme: const BottomSheetThemeData(
          //   backgroundColor: Colors.white,
          // ),
          // textTheme: context.watch<FrameworkTheme>().textTheme,
          // colorScheme: ColorScheme.fromSwatch().copyWith(
          //   brightness: Brightness.light,
          // secondary: OOSTheme.accentColor,
          // ),
          ),
      // theme: ThemeData(),
      darkTheme: _buildTheme(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
    );
  }

  ThemeData _buildTheme() {
    var baseTheme = ThemeData.dark().copyWith(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.teal,
        brightness: Brightness.dark,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: backgroundLightColor,
        selectedItemColor: Colors.teal,
      ),
      canvasColor: backgroundColor,
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: const AppBarTheme(backgroundColor: backgroundColor),
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
    );
  }
}
