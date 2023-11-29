import 'package:flutter/cupertino.dart';

extension ContextExtensions on BuildContext {
  EdgeInsets get screenPadding => MediaQuery.of(this).padding;

  Size get screenSize => MediaQuery.of(this).size;
}