
import 'package:custom_draggable_scrollable_sheet/inherited_widget/scrollable_sheet_state.dart';
import 'package:flutter/material.dart';

import 'inherited_state_container.dart';



class AppStateContainer extends StatefulWidget {
  // You must pass through a child.
  final Widget child;
  final bool? user;

  const AppStateContainer({super.key,
    required this.child,
    this.user,
  });

  static ScrollableSheetStateContainer state(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<InheritedStateContainer>()
    as InheritedStateContainer).data;
  }

  @override
  ScrollableSheetStateContainer createState() =>  ScrollableSheetStateContainer();
}