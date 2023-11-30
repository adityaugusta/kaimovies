import 'package:flutter/material.dart';

abstract class BasePage extends StatefulWidget {
  const BasePage({super.key});
}

abstract class BasePageState<Page extends BasePage>
    extends State<Page> {}

mixin BasePageBuilder<Page extends BasePage> on BasePageState<Page> {
  @override
  Widget build(BuildContext context) => body();

  Widget body();
}

abstract class PageWrapper {
  Widget wrappedRoute(BuildContext context);
}