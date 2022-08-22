import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tip_calculator/bloc/select_tip/select_tip_bloc.dart';
import 'package:tip_calculator/views/home/components/tip.dart';

class TipsList extends StatefulWidget {
  final void Function(int) handleSelectedTip;

  const TipsList({Key? key, required this.handleSelectedTip}) : super(key: key);

  @override
  State<TipsList> createState() => _TipsListState();
}

class _TipsListState extends State<TipsList> {
  final tipsList = [5, 10, 15, 25, 50];
  var _currentSelectValue = 5;

  void handleClicked(int value, int index) {
    setState(() {
      _currentSelectValue = value;
    });
    widget.handleSelectedTip(_currentSelectValue);
  }

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
        BlocBuilder<SelectTipBloc, SelectTipState>(
          builder: (context, state) {
            return GridView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 180,
                childAspectRatio: 9 / 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 30,
              ),
              children: tipsList.asMap().entries.map((e) {
                int idx = e.key;
                int val = e.value;
                return Tip(
                  tipValue: val,
                  selected: val == state.selectedTip,
                  index: idx,
                  handleClicked: handleClicked,
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }
}
