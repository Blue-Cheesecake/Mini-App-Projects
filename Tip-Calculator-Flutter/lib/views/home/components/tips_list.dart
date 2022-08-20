import 'package:flutter/material.dart';

class TipsList extends StatefulWidget {
  final void Function(int) handleSelectedTip;

  const TipsList({Key? key, required this.handleSelectedTip}) : super(key: key);

  @override
  State<TipsList> createState() => _TipsListState();
}

class _TipsListState extends State<TipsList> {
  final tipsList = [5, 10, 15, 25, 50];
  var _currentSelectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select Tip %",
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(height: 15),
        // SizedBox(
        //   height: 100,
        //   child: GridView.builder(
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2),
        //     itemBuilder: (context, index) {
        //       return Tip(tipValue: tipsList[index], selected: false);
        //     },
        //   ),
        // )
      ],
    );
  }
}
