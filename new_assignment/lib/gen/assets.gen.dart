/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/about_us.png
  AssetGenImage get aboutUs => const AssetGenImage('assets/icons/about_us.png');

  /// File path: assets/icons/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/icons/avatar.png');

  /// File path: assets/icons/bell.png
  AssetGenImage get bell => const AssetGenImage('assets/icons/bell.png');

  /// File path: assets/icons/calender.png
  AssetGenImage get calender =>
      const AssetGenImage('assets/icons/calender.png');

  /// File path: assets/icons/call_icon.png
  AssetGenImage get callIcon =>
      const AssetGenImage('assets/icons/call_icon.png');

  /// File path: assets/icons/cancel_subscription.png
  AssetGenImage get cancelSubscription =>
      const AssetGenImage('assets/icons/cancel_subscription.png');

  /// File path: assets/icons/contacts.png
  AssetGenImage get contacts =>
      const AssetGenImage('assets/icons/contacts.png');

  /// File path: assets/icons/dashboard_new.png
  AssetGenImage get dashboardNew =>
      const AssetGenImage('assets/icons/dashboard_new.png');

  /// File path: assets/icons/gamification.png
  AssetGenImage get gamification =>
      const AssetGenImage('assets/icons/gamification.png');

  /// File path: assets/icons/headphone_icon.png
  AssetGenImage get headphoneIcon =>
      const AssetGenImage('assets/icons/headphone_icon.png');

  /// File path: assets/icons/help.png
  AssetGenImage get help => const AssetGenImage('assets/icons/help.png');

  /// File path: assets/icons/home_icon.png
  AssetGenImage get homeIcon =>
      const AssetGenImage('assets/icons/home_icon.png');

  /// File path: assets/icons/logout.png
  AssetGenImage get logout => const AssetGenImage('assets/icons/logout.png');

  /// File path: assets/icons/logs.png
  AssetGenImage get logs => const AssetGenImage('assets/icons/logs.png');

  /// File path: assets/icons/menu.png
  AssetGenImage get menu => const AssetGenImage('assets/icons/menu.png');

  /// File path: assets/icons/mobile_icon.png
  AssetGenImage get mobileIcon =>
      const AssetGenImage('assets/icons/mobile_icon.png');

  /// File path: assets/icons/msg_icon.png
  AssetGenImage get msgIcon => const AssetGenImage('assets/icons/msg_icon.png');

  /// File path: assets/icons/name_icon.png
  AssetGenImage get nameIcon =>
      const AssetGenImage('assets/icons/name_icon.png');

  /// File path: assets/icons/pass_icon.png
  AssetGenImage get passIcon =>
      const AssetGenImage('assets/icons/pass_icon.png');

  /// File path: assets/icons/person_icon.png
  AssetGenImage get personIcon =>
      const AssetGenImage('assets/icons/person_icon.png');

  /// File path: assets/icons/piracy_policy.png
  AssetGenImage get piracyPolicy =>
      const AssetGenImage('assets/icons/piracy_policy.png');

  /// File path: assets/icons/play_icon.png
  AssetGenImage get playIcon =>
      const AssetGenImage('assets/icons/play_icon.png');

  /// File path: assets/icons/rocket.png
  AssetGenImage get rocket => const AssetGenImage('assets/icons/rocket.png');

  /// File path: assets/icons/setting.png
  AssetGenImage get setting => const AssetGenImage('assets/icons/setting.png');

  /// File path: assets/icons/share.png
  AssetGenImage get share => const AssetGenImage('assets/icons/share.png');

  /// File path: assets/icons/sync_data.png
  AssetGenImage get syncData =>
      const AssetGenImage('assets/icons/sync_data.png');

  /// File path: assets/icons/version.png
  AssetGenImage get version => const AssetGenImage('assets/icons/version.png');

  /// File path: assets/icons/video_img.png
  AssetGenImage get videoImg =>
      const AssetGenImage('assets/icons/video_img.png');

  /// File path: assets/icons/whatsapp.png
  AssetGenImage get whatsapp =>
      const AssetGenImage('assets/icons/whatsapp.png');

  /// File path: assets/icons/whatsapp_icon.png
  AssetGenImage get whatsappIcon =>
      const AssetGenImage('assets/icons/whatsapp_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        aboutUs,
        avatar,
        bell,
        calender,
        callIcon,
        cancelSubscription,
        contacts,
        dashboardNew,
        gamification,
        headphoneIcon,
        help,
        homeIcon,
        logout,
        logs,
        menu,
        mobileIcon,
        msgIcon,
        nameIcon,
        passIcon,
        personIcon,
        piracyPolicy,
        playIcon,
        rocket,
        setting,
        share,
        syncData,
        version,
        videoImg,
        whatsapp,
        whatsappIcon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/Logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
