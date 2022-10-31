import 'package:flutter/material.dart';
import 'package:furniture_apps/color/color.dart';
import 'package:furniture_apps/color/text_style.dart';
import 'package:furniture_apps/data/model_data.dart';
import 'package:furniture_apps/model/model.dart';
import 'package:furniture_apps/widget/custome_app_bar.dart';
import 'package:furniture_apps/widget/item_card.dart';
import 'package:furniture_apps/widget/tab_bar_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomeAppBar(),
            Text(
              "Furniture in\nunique style",
              style: heading,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Kami berlokasi di Kalimantan Barat",
              style: subHeading,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 70.0,
              child: const TabBarButton(),
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: models.length,
                itemBuilder: (context, index) {
                  final Model = models[index];
                  return ItemCard(
                    model: Model,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
