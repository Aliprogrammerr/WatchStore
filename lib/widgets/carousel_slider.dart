import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watchstore/resuorce/color.dart';
import 'package:watchstore/resuorce/dimens.dart';

final List images = [
  'https://images.unsplash.com/photo-1612817159949-195b6eb9e31a?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  "https://images.unsplash.com/photo-1580658001207-ccd9b884191c?q=80&w=2857&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1623998021450-85c29c644e0d?q=80&w=2757&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
];

class AppSlider extends StatefulWidget {
  const AppSlider({super.key});

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  final CarouselController _controller = CarouselController();
  final List<Widget> items = images
      .map((e) => Padding(
            padding: const EdgeInsets.all(
              Dimens.medium,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Dimens.medium),
              child: Image.network(
                e,
                fit: BoxFit.cover,
              ),
            ),
          ))
      .toList();
  int curentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  curentIndex = index;
                });
              },
            ),
            items: items,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images
                .asMap()
                .entries
                .map((e) => GestureDetector(
                      onTap: () => _controller.animateToPage(e.key),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: curentIndex == e.key
                                ? Colors.black
                                : LightAppColors.primaryColor,
                            shape: BoxShape.circle),
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
