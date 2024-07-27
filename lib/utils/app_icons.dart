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
  menuProfileSelected('assets/icons/ic_profile_white.svg');

  const AppIcons(this.path);

  final String path;
}
