import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

enum ImageEnums { eye, batman, mail, profile }

extension ImageEnumExtension on ImageEnums {
  String get _toPath => 'assets/images/svg/ic_$name.svg';
  String get _toPng => 'assets/images/png/$name.png';

  SvgPicture get toSvg => SvgPicture.asset(
        _toPath,
      );

  Image get toPng => Image.asset(_toPng);

  AssetImage get toAsset => AssetImage(_toPng);
}
