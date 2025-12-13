import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:top_talent_agency/app/core/const/app_assets_path.dart';

class LogoSvg extends StatelessWidget {
  const LogoSvg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: SvgPicture.asset(AppAssetsPath.logoSvg, fit: BoxFit.contain),
    );
  }
}
