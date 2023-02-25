import 'package:flutter/material.dart';

import '../inherited_widget/app_state_container.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final showScrollableSheet = AppStateContainer.state(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text('Second Page Body'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showScrollableSheet.updateScrollableSheetState(showSheet: true);
            setState(() {

            });
          }, child: const Icon(Icons.arrow_upward_rounded)),
    );
  }
}
