import 'dart:ui';
import 'package:flutter/material.dart';

class NFButtonConfig  {

    double padding,margin,textSize;
    Color bgColor;
    Color textColor;
    BorderRadius borderRadius;
    NFButtonConfig(this.padding,this.margin,this.bgColor,this.textColor,this.textSize,this.borderRadius);  


     NFButtonConfig.orgin() {
      padding = 16.0;
      margin = 16.0;
      bgColor = Colors.white10;
      textColor = Colors.lightBlue;
      textSize = 16.0;
      borderRadius = BorderRadius.circular(14);
    }
    
}


