import 'package:flutter/material.dart';
import 'package:furniture_apps/color/color.dart';
import 'package:furniture_apps/color/text_style.dart';
import 'package:furniture_apps/data/tab_bar_menu.dart';

class TabBarButton extends StatefulWidget {
  const TabBarButton({super.key});

  @override
  State<TabBarButton> createState() => _TabBarButtonState();
}

class _TabBarButtonState extends State<TabBarButton> {
  @override
  Widget build(BuildContext context) {
    int id = 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < tabMenu.length; i++)
          InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              setState(() {
                id = tabMenu[i].id;
              });
            },
            child: Expanded(
              child: Container(
                height: 40.0,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: id == i ? grey : Colors.transparent,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Center(
                  child: Text(
                    tabMenu[i].name,
                    style: id == i ? tabButtonS : tabButtonU,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
