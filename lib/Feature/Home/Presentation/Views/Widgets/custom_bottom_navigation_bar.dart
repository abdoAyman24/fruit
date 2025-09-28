import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/nave_bar_item.dart';
import 'package:fruit_hup/Feature/Home/domain/entity/navigation_bar_item_entity.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 7,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: navigationList.asMap().entries.map((e) {
          var index = e.key;
          var entity = e.value;
          return Expanded(
            flex: SelectedIndex == index ? 3 : 2,
            child: GestureDetector(
              onTap: () {
                Future.delayed(Duration(milliseconds: 300), () {
                  setState(() {
                    SelectedIndex = index;
                  });
                });
              },
              child: NavigationBarItem(
                isSelected: SelectedIndex == index,
                navigationBarItemEntity: entity,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}






