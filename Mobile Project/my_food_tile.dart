import 'package:flutter/material.dart';

import 'food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({super.key, required this.food,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [

              //text food details
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(food.name),
                  Text("${food.price.toString()} JDs",style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                  const SizedBox(height: 10,),
                  Text(food.description,style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                ],
              ),
              ),
              const SizedBox(width: 15,),
              //food image
              ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
               height: 130,
               width: 140,
               child: Image.asset(food.imagePath,fit: BoxFit.fill,
              ),
              ),
              ),
            ],
          ),
        ),
      ),
      Divider(
        color: Theme.of(context).colorScheme.tertiary,
      )
    ],
    );
  }
}
