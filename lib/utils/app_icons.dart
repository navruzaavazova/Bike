enum AppIcons {
  menuBikeUnselected('assets/icons/ic_bike.svg'),
  menuCartUnselected('assets/icons/ic_cart.svg'),
  menuDocUnselected('assets/icons/ic_doc.svg'),
  menuMapUnselected('assets/icons/ic_map.svg'),
  menuProfileUnselected('assets/icons/ic_profile.svg'),
  menuBikeSelected('assets/icons/ic_bike_white.svg'),
  menuCartSelected('assets/icons/ic_cart_white.svg'),
  menuDocSelected('assets/icons/ic_doc_white.svg'),
  menuMapSelected('assets/icons/ic_map_white.svg'),
  menuProfileSelected('assets/icons/ic_profile_white.svg'),

  homeSearch('assets/icons/ic_search.svg'),
  homeElectroBikeUnselected('assets/icons/ic_electro_bike.svg'),
  homeElectroBikeSelected('assets/icons/ic_electrobike_white.svg'),
  homeMountainUnselected('assets/icons/ic_mountain.svg'),
  homeMountainSelected('assets/icons/ic_mountain_white.svg'),
  homeMilitaryHatUnselected('assets/icons/ic_military_hat.svg'),
  homeMilitaryHatSelected('assets/icons/ic_military_hat_white.svg'),
  homeRoadUnselected('assets/icons/ic_road.svg'),
  homeRoadSelected('assets/icons/ic_road_white.svg'),
  homeAll('assets/icons/ic_All.svg'),
  homeHeart('assets/icons/ic_heart.svg'),
  homeBlueHeart('assets/icons/ic_blue_heart.svg'),

  chevronLeft('assets/icons/ic_chevron_left.svg'),

  plus('assets/icons/ic_plus.svg'),
  minus('assets/icons/ic_minus.svg'),
  chevronForward('assets/icons/ic_chevron_forward.svg');

  const AppIcons(this.path);

  final String path;
}
