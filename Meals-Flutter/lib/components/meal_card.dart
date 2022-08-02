import 'package:flutter/material.dart';
import 'package:meals_flutter/constants/route_paths.dart';
import 'package:meals_flutter/models/meal.dart';

class MealCard extends StatelessWidget {
  const MealCard({Key? key, required this.meal}) : super(key: key);

  final Meal meal;
  void _pressedMealCard(BuildContext context) {
    Navigator.of(context).pushNamed(RoutePaths.meal, arguments: {"meal": meal});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _pressedMealCard(context),
      splashColor: Theme.of(context).primaryColor,
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Stack(children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    meal.imageUrl,
                    width: double.infinity,
                    height: 175,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    width: 220,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        color: Color.fromRGBO(0, 0, 0, 0.5)),
                    child: Text(
                      meal.title,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.timelapse_outlined,
                          color: Colors.blueGrey,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          "${meal.duration} min",
                          style: const TextStyle(
                            fontFamily: "RobotoCondensed",
                            color: Colors.blueGrey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.work,
                          color: Colors.blueGrey,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          meal.complexity.name,
                          style: const TextStyle(
                            fontFamily: "RobotoCondensed",
                            color: Colors.blueGrey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
