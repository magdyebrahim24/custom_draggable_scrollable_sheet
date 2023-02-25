import 'package:custom_draggable_scrollable_sheet/inherited_widget/inherited_state_container.dart';
import 'package:flutter/material.dart';
import 'app_state_container.dart';

class ScrollableSheetStateContainer extends State<AppStateContainer> {
  bool showScrollableSheet = false;

  void updateScrollableSheetState({bool? showSheet}) {
    print('cnsaclk');
    showScrollableSheet = showSheet ?? showScrollableSheet;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return InheritedStateContainer(
      data: this,
      child: widget.child,
    );
  }
}
