import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watchstore/compounents/app_text_style.dart';
import 'package:watchstore/resuorce/dimens.dart';




class CatItem extends StatelessWidget {
  CatItem(
      {super.key,
      required this.gradient,
      required this.svgpath,
      required this.title});
  List<Color> gradient;
  final String svgpath;
  final String title;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(Dimens.medium),
          width: size.height * .08,
          height: size.height * .08,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: gradient,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              borderRadius:
                  const BorderRadius.all(Radius.circular(Dimens.large))),
          child: Padding(
              padding: const EdgeInsets.all(Dimens.small),
              child: SvgPicture.asset(svgpath)),
        ),
        Text(
          title,
          style: LightAppTextStyle.title.copyWith(fontSize: 16),
        )
      ],
    );
  }
}
