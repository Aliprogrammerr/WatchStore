


import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension SizedBoxExtention on num {
  SizedBox get height => SizedBox(height:toDouble());
  SizedBox get width => SizedBox(width:toDouble());
}

extension IntExtention on int {
   String get seperateWithComma {
    final numbertformat = NumberFormat.decimalPattern();
    return numbertformat.format(this); 
   }
}