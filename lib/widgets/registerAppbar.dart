// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../resuorce/app_String.dart';
import '../resuorce/dimens.dart';
import '../compounents/app_text_style.dart';

class RegisterAppbar extends StatelessWidget implements PreferredSize {
  const RegisterAppbar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size(size.width, size.height * 0.1),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.small),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              const Text(
                AppStrings.register,
                style: LightAppTextStyle.title,
              )
            ],
          ),
        ));
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(size.height * 0.1);
}
