import 'package:custom_draggable_scrollable_sheet/draggable_scrollable_sheet/draggable_scrollable_sheet_widget.dart';
import 'package:custom_draggable_scrollable_sheet/pages/second_page.dart';
import 'package:flutter/material.dart';
import 'inherited_widget/app_state_container.dart';
import 'common/common.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final bool showScrollableSheet =
        AppStateContainer.state(context).showScrollableSheet;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Example'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Here Scroll Sheet ....'),
                MaterialButton(
                  onPressed: () =>
                  pushMaterialPage(context, const SecondPage(),rootNavigator: true),
                      // Navigator.push(
                    // context,
                    // MaterialPageRoute(
                    //   builder: (context,context, rootNavigator: true) => const SecondPage(),
                    // ),
                  // ),
                  child: const Text('go To Next Page'),
                )
              ],
            ),
          ),
          showScrollableSheet
              ? const DraggableScrollableSheetWidget()
              : const SizedBox(),
        ],
      ),
    );
  }
}
