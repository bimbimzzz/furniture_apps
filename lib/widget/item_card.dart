import 'package:flutter/material.dart';
import 'package:furniture_apps/color/text_style.dart';
import 'package:furniture_apps/data/model_data.dart';
import 'package:furniture_apps/model/model.dart';

class ItemCard extends StatelessWidget {
  final Model model;
  const ItemCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      margin: EdgeInsets.only(bottom: 30.0),
      child: Row(
        children: [
          Container(
            width: 140.0,
            child: Image.asset(model.image[0]),
          ),
          Container(
            width: 180.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: itemCardHeading,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  model.description,
                  style: itemCardDes,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      model.category,
                    ),
                    Text(
                      model.price,
                      style: itemCardPrice,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
