import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/homepage.dart';

class ListAnimation extends StatefulWidget {
  const ListAnimation({Key? key}) : super(key: key);
  static const routeName = "${Homepage.routeName}/list_animation";

  @override
  State<ListAnimation> createState() => _ListAnimationState();
}

class _ListAnimationState extends State<ListAnimation>
    with SingleTickerProviderStateMixin {
  var _myList = [];
  final _myListKey = GlobalKey<AnimatedListState>();
  var selectedIndex = -1;

  Widget _singleItem(int id) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Text(
        "Item $id",
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _animation() {
    return AnimatedList(
      key: _myListKey,
      initialItemCount: _myList.length,
      itemBuilder: (context, index, animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: const Offset(0, 0),
          ).animate(animation),
          child: _myList[index],
        );
      },
    );
  }

  void _insertItem(Widget newItem) {
    _myList.add(newItem);
    _myListKey.currentState?.insertItem(_myList.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List Animation',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //// Add Button ///
          ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(const Size(60, 60)),
              shape: MaterialStateProperty.all<CircleBorder>(
                const CircleBorder(),
              ),
            ),
            onPressed: () {
              _insertItem(_singleItem(_myList.length + 1));
            },
            child: const Icon(
              Icons.add,
              size: 35,
            ),
          ),
          //// Remove Button ///
          const SizedBox(width: 20),
          ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(const Size(60, 60)),
              shape: MaterialStateProperty.all<CircleBorder>(
                const CircleBorder(),
              ),
            ),
            onPressed: () {},
            child: const Icon(
              Icons.remove,
              size: 35,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: _animation(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
