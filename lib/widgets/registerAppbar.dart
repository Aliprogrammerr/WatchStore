



import 'package:flutter/material.dart';
import '../resuorce/appString.dart';
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
      preferredSize:Size(size.width,size.height*0.1) ,
       child: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimens.small),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back)),
            Text(AppStrings.register,style:LightAppTextStyle.title,)
          ],
         ),
       )
       );
  }
  
  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size.height *0.1);
}