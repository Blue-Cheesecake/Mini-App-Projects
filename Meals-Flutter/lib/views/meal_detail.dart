import 'package:flutter/material.dart';
import 'package:meals_flutter/common/material_scaffold.dart';
import 'package:meals_flutter/models/meal.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({Key? key}) : super(key: key);

  Widget _decoratedContainer(double height, Widget child) {
    return Container(
      height: height,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blueGrey.shade100, width: 3),
      ),
      child: child,
    );
  }

  Widget _buildIngredientsListView(
      BuildContext context, List<String> ingredients) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: ingredients.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(66, 194, 255, 0.8),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              padding: const EdgeInsets.all(10),
              child: Text(
                ingredients[index],
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const Divider(
              thickness: 0.5,
              height: 20,
              color: Colors.blueGrey,
            )
          ],
        );
      },
    );
  }

  Widget _buildStepsListView(BuildContext context, List<String> steps) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: steps.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Text(
                "# ${index + 1}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            title: Text(
              steps[index],
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        );
      },
    );
  }

  Widget _index(BuildContext context, Meal meal) {
    // image
    // ingredients
    // steps
    final equalHeight = MediaQuery.of(context).size.height * 0.24;

    return SingleChildScrollView(
      child: Column(
        children: [
          Image.network(
            meal.imageUrl,
            width: double.infinity,
            height: equalHeight,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Ingredients",
            style: Theme.of(context).textTheme.headline4,
          ),
          _decoratedContainer(equalHeight,
              _buildIngredientsListView(context, meal.ingredients)),
          Text("Steps", style: Theme.of(context).textTheme.headline4),
          _decoratedContainer(
              equalHeight, _buildStepsListView(context, meal.steps)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return MaterialScaffold(
      widget: _index(context, meal),
      title: meal.title,
    );
  }
}
