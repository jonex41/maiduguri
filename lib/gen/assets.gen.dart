/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetImagesGen {
  const $AssetImagesGen();

  /// File path: asset/images/badge.svg
  SvgGenImage get badge => const SvgGenImage('asset/images/badge.svg');

  /// File path: asset/images/chat_lead.png
  AssetGenImage get chatLead =>
      const AssetGenImage('asset/images/chat_lead.png');

  /// File path: asset/images/connect.png
  AssetGenImage get connect => const AssetGenImage('asset/images/connect.png');

  /// File path: asset/images/event.png
  AssetGenImage get event => const AssetGenImage('asset/images/event.png');

  /// File path: asset/images/feed.png
  AssetGenImage get feed => const AssetGenImage('asset/images/feed.png');

  /// File path: asset/images/group.png
  AssetGenImage get group => const AssetGenImage('asset/images/group.png');

  /// File path: asset/images/home.png
  AssetGenImage get home => const AssetGenImage('asset/images/home.png');

  /// File path: asset/images/location.svg
  SvgGenImage get location => const SvgGenImage('asset/images/location.svg');

  /// File path: asset/images/logo_name.svg
  SvgGenImage get logoName => const SvgGenImage('asset/images/logo_name.svg');

  /// File path: asset/images/logo_name2.svg
  SvgGenImage get logoName2 => const SvgGenImage('asset/images/logo_name2.svg');

  /// File path: asset/images/logout.png
  AssetGenImage get logout => const AssetGenImage('asset/images/logout.png');

  /// File path: asset/images/maiduguri.svg
  SvgGenImage get maiduguri => const SvgGenImage('asset/images/maiduguri.svg');

  /// File path: asset/images/member.png
  AssetGenImage get member => const AssetGenImage('asset/images/member.png');

  /// File path: asset/images/mentor.png
  AssetGenImage get mentor => const AssetGenImage('asset/images/mentor.png');

  /// File path: asset/images/message.png
  AssetGenImage get message => const AssetGenImage('asset/images/message.png');

  /// File path: asset/images/no_data.png
  AssetGenImage get noData => const AssetGenImage('asset/images/no_data.png');

  /// File path: asset/images/person.png
  AssetGenImage get person => const AssetGenImage('asset/images/person.png');

  /// File path: asset/images/profile.png
  AssetGenImage get profile => const AssetGenImage('asset/images/profile.png');

  /// File path: asset/images/profile_big.png
  AssetGenImage get profileBig =>
      const AssetGenImage('asset/images/profile_big.png');

  /// File path: asset/images/small_name.svg
  SvgGenImage get smallName => const SvgGenImage('asset/images/small_name.svg');

  /// File path: asset/images/splash.png
  AssetGenImage get splash => const AssetGenImage('asset/images/splash.png');

  /// List of all assets
  List<dynamic> get values => [
        badge,
        chatLead,
        connect,
        event,
        feed,
        group,
        home,
        location,
        logoName,
        logoName2,
        logout,
        maiduguri,
        member,
        mentor,
        message,
        noData,
        person,
        profile,
        profileBig,
        smallName,
        splash
      ];
}

class Assets {
  Assets._();

  static const $AssetImagesGen images = $AssetImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
