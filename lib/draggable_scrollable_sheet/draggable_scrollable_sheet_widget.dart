import 'package:flutter/material.dart';

class DraggableScrollableSheetWidget extends StatefulWidget {
  const DraggableScrollableSheetWidget({Key? key}) : super(key: key);

  @override
  State<DraggableScrollableSheetWidget> createState() =>
      _DraggableScrollableSheetWidgetState();
}

const double minHeight = 100;
const double maxHeight = 200;

class _DraggableScrollableSheetWidgetState
    extends State<DraggableScrollableSheetWidget> {
  late DraggableScrollableController controller;

  double sizeHeight = maxHeight;
  double ratio = 0;
  @override
  void initState() {
    controller = DraggableScrollableController();
    controller.addListener(() {
      if (controller.size < .8) {
        ratio = maxHeight * controller.size + 40;
        if (ratio >= minHeight) {
          sizeHeight = maxHeight * controller.size + 40;
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: DraggableScrollableSheet(
      snap: true,
      initialChildSize: 1,
      minChildSize: .13,
      maxChildSize: 1,
      controller: controller,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          color: Colors.blue[100],
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.amber,
                  height: sizeHeight,
                ),
                Text(
                  dummyText,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
      },
    ));
  }

  String dummyText =
      'On August 31, 1869, Mary Ward became the first recorded victim of an automobile accident; the car involved was steam-powered (Karl Benz did not invent the gasoline-powered automobile until 1886). Ward, of Parsonstown, Ireland, was thrown out of a motor vehicle and killed.[10] Thirty years later, on September 13, 1899, Henry Bliss became North America first motor vehicle fatality when hit while stepping off a New York City trolley. The need for a means of analyzing and mitigating the effects of motor vehicle accidents on humans was felt soon after commercial production of automobiles began in the late 1890s, and by the 1930s, when the automobile became a common part of daily life and the number of motor vehicle deaths were rising. Death rates had surpassed 15.6 fatalities per 100 million vehicle-miles continue to climb. (Currently, according to the CDC, each year approximately 1.35 million people are killed on roadways around the world. [11]).In 1930 cars had dashboards of rigid metal, non-collapsible steering columns, and protruding knobs, buttons, and levers. Without seat belts, passengers in a frontal collision could be hurled against the interior of the automobile or through the windshield. The vehicle body itself was rigid, and impact forces were transmitted directly to the vehicle occupants. As late as the 1950s, car manufacturers were on public record as saying that vehicle accidents simply could not be made survivable because the forces in a crash were too great.[citation needed] ';
}
