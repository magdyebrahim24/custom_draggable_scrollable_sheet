import 'package:flutter/cupertino.dart';

Future<T?> pushMaterialPage<T>(BuildContext context, Widget page,
    {bool rootNavigator = false, RouteSettings? settings, bool fullscreenDialog = false}) {
  return Navigator.of(context, rootNavigator: rootNavigator).push(CupertinoPageRoute(
      builder: (context) => page, settings: settings, fullscreenDialog: fullscreenDialog));
}