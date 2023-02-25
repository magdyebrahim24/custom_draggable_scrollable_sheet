import 'package:custom_draggable_scrollable_sheet/inherited_widget/scrollable_sheet_state.dart';
import 'package:flutter/material.dart';

class InheritedStateContainer extends InheritedWidget {
  final ScrollableSheetStateContainer data;
  const InheritedStateContainer({
    super.key,
    required this.data,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedStateContainer oldWidget) => true;
}
