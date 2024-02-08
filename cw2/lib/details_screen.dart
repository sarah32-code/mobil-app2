import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String recipeName;

  DetailsScreen({required this.recipeName});

  @override
  Widget build(BuildContext context) {
    String ingredients = "";
    String instructions = "";

    switch (recipeName) {
      case "Pasta":
        ingredients = "Pasta, Tomato Sauce, Garlic, Olive Oil, Parmesan Cheese";
        instructions = "1. Boil pasta in salted water.\n"
            "2. In a pan, heat olive oil and sauté garlic.\n"
            "3. Add tomato sauce and simmer.\n"
            "4. Toss cooked pasta in the sauce.\n"
            "5. Serve hot with grated Parmesan cheese.";
        break;
      case "Pizza":
        ingredients = "Pizza Dough, Tomato Sauce, Mozzarella Cheese, Pepperoni, Bell Peppers, Mushrooms";
        instructions = "1. Roll out pizza dough on a baking sheet.\n"
            "2. Spread tomato sauce evenly over the dough.\n"
            "3. Sprinkle shredded mozzarella cheese.\n"
            "4. Add desired toppings such as pepperoni, bell peppers, and mushrooms.\n"
            "5. Bake in a preheated oven at 425°F (220°C) for 15-20 minutes.\n"
            "6. Slice and serve hot.";
        break;
      case "Fish":
        ingredients = "Fish Fillets, Lemon, Butter, Salt, Pepper, Herbs (optional)";
        instructions = "1. Season fish fillets with salt, pepper, and herbs (if using).\n"
            "2. Heat butter in a skillet over medium heat.\n"
            "3. Add fish fillets to the skillet.\n"
            "4. Squeeze lemon juice over the fish.\n"
            "5. Cook for 3-4 minutes on each side until fish is cooked through.\n"
            "6. Serve hot with additional lemon wedges.";
        break;
      default:
        ingredients = "Ingredients not available";
        instructions = "Instructions not available";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(recipeName),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ingredients:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(ingredients),
            SizedBox(height: 20),
            Text(
              'Instructions:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(instructions),
          ],
        ),
      ),
    );
  }
}
