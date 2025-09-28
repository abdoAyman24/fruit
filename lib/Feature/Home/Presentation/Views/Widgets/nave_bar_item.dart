import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/inActive_Item.dart';
import 'package:fruit_hup/Feature/Home/domain/entity/navigation_bar_item_entity.dart';

import 'active_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.navigationBarItemEntity,
  });
  final bool isSelected;
  final NavigationEntity navigationBarItemEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            item: navigationBarItemEntity.activeImage,
            name: navigationBarItemEntity.name,
          )
        : InActiveItem(item: navigationBarItemEntity.inAtciveImage);
  }
}