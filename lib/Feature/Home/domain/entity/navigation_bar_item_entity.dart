import 'package:fruit_hup/Core/utils/app_icon.dart';

class NavigationEntity {
  final String activeImage, inAtciveImage;
  final String name;

  NavigationEntity({
    required this.activeImage,
    required this.inAtciveImage,
    required this.name,
  });
}

List<NavigationEntity> get navigationList => [
  NavigationEntity(
    activeImage: Assets.imageNavBarItemActiveHome,
    inAtciveImage: Assets.imageNavBarItemInActiveHome,
    name: 'الرئيسية',
  ),
  NavigationEntity(
    activeImage: Assets.imageNavBarItemActiveProduct,
    inAtciveImage: Assets.imageNavBarItemInActiveProduct,
    name: 'المنتجات',
  ),
  NavigationEntity(
    activeImage: Assets.imageNavBarItemActiveShope,
    inAtciveImage: Assets.imageNavBarItemInActiveShope,
    name: 'سلة التسوق',
  ),
  NavigationEntity(
    activeImage: Assets.imageNavBarItemActiveUser,
    inAtciveImage: Assets.imageNavBarItemInActiveUser,
    name: 'حسابي',
  ),
];
