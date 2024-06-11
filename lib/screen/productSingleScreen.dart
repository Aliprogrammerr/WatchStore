import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watchstore/compounents/app_text_style.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/appString.dart';
import 'package:watchstore/resuorce/color.dart';
import 'package:watchstore/resuorce/dimens.dart';
import 'package:watchstore/screen/productListScreeen.dart';
import 'package:watchstore/widgets/cart_baadgget.dart';

class ProductSingleScreen extends StatelessWidget {
  const ProductSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size =  MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      appBar: CustomAppbar(
        child:Row(
          children: [
            CartBudget(count: 2,),
            Expanded(child: Text("Product Nmae",style: LightAppTextStyle.title,textDirection:TextDirection.rtl,)),
            IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/svg/close.svg"))
          ],
        ) ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [ 
                  Image.asset("assets/png/unnamed.png",fit: BoxFit.cover,
                  width:size.width),
                  Container(
                    margin: EdgeInsets.all(Dimens.medium),
                    width: double.infinity,
                    padding: EdgeInsets.all(Dimens.medium), 
                    decoration: BoxDecoration(
                      color: LightAppColors.scaffoldBackground , 
                      borderRadius: BorderRadius.circular(Dimens.medium)
                    ),
              
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("title",style:LightAppTextStyle.title,),
                        Text("this is the discription that i was talking abou tbro ",style: LightAppTextStyle.caption,),
                        Dimens.medium.height,
                        ProductTapView()
                      ],
                    ) ,
                  )
                ],
              ),
            ),
            BottomNavSingle(price:1200 ,discount: 12,oldprice:20,)
          ],
        ),
    )
    
     );
    }
}

class BottomNavSingle extends StatelessWidget {
  const BottomNavSingle({
    super.key,
    required this.price,
     this.discount = 0,
     this.oldprice = 0,
  });
  final double price ; 
  final double discount ;
  final double oldprice ;  

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        margin: EdgeInsets.only(left: 5),
        width: double.infinity,
        height: 60,
      decoration: BoxDecoration(color:LightAppColors.appbar),
     child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          width: 100,
          height: 60,
          child: Stack(
            children: [
              
              Positioned(
                top: 10,
                right: 0,
                left: 0,
                child: Text('تومان${price}',style: LightAppTextStyle.title,)),
              Visibility(
                visible: discount > 0 ? true : false,
                child: Positioned(
                  right: 10,
                  top: 25,
                  child: Container(
                    width: 30,
                    height: 20,
                    decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 72, 72),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text("${discount}%",style:LightAppTextStyle.selectedTabView.copyWith(fontSize: 12,color: LightAppColors.appbar),)),
                  ),
                ),
              ),
              Visibility(
                visible: oldprice > 0 ? true : false,
                child: Positioned(
                  bottom: 12,left: 5,
                  child:  Text(oldprice.toString(),style: LightAppTextStyle.oldPrice,)),
              )
            ],
          ),
        ),
       
      ],),
      AddToCartBtn(),




      
      ],), 


    ));
  }
}


class ProductTapView extends StatefulWidget {
  const ProductTapView({super.key});

  @override
  State<ProductTapView> createState() => _ProductTapViewState();
}

class _ProductTapViewState extends State<ProductTapView> {
  var selectextIndex = 1 ;

  @override
  Widget build(BuildContext context) {
    var size =  MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: size.width,
          height: 50,
          child: ListView.builder(
            reverse: false,
            itemExtent: size.width/2.5,
            scrollDirection: Axis.horizontal,
            itemCount: tabList.length,
            itemBuilder: (context , index)=> 
          GestureDetector(
            onTap: () => setState(() {
              selectextIndex =index;
            }),
            child:Text(tabList[index],style: index == selectextIndex ? LightAppTextStyle.selectedTabView : LightAppTextStyle.unSelectedTabView),)
            ),
            
        ),
        SizedBox(
          width: double.infinity,
          height: 600,
          child: IndexedStack(
            index:selectextIndex,
            children: [
              First(),
              Second(),
              Thirsd()
            ],
          ),
        )
      ],
    );
  }
  List<String> tabList= ["first","second","third"];
  
}

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 200,
        margin: EdgeInsets.only(right: 5),
        height: 50,
        decoration: BoxDecoration(
          color: LightAppColors.primaryColor,
          borderRadius: BorderRadius.circular(Dimens.medium)
        ),
        child: Center(
          child: Text(AppStrings.addToBasket,style: LightAppTextStyle.mainButtonStyle,),
        ),
      ),
    );
  }
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("first");
}
}
class Second extends StatelessWidget {
const Second({super.key});  
  @override
  Widget build(BuildContext context) {

    return Text("second");
}
}
class Thirsd extends StatelessWidget {
  const Thirsd({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("third");
  }
}


  