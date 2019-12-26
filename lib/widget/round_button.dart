import 'package:flutter/material.dart';
import 'package:nfui/theme/button_config.dart';

/*
 *  Function:一个圆角的button效果  
 */

enum RoundStyle {
  none,
  normal,
  custom,
  circle,
}

class NFRoundButton extends StatelessWidget{
    final Key key;
    final String data;
    final double radius;
    final RoundStyle stype;
    final VoidCallback onPressed;
    final ButtonTextTheme textTheme;
    final BorderSide side;
    final Color backgroundColor; 
    final Color textColor;
    final double textSize;

    const NFRoundButton(this.data,{
      this.key,
      @required this.onPressed, 
      this.radius,
      this.stype = RoundStyle.normal,
      this.textTheme,
      this.backgroundColor = Colors.white,
      this.side = const BorderSide(color:Colors.blue),
      this.textColor = Colors.blue,
      this.textSize,
    }):super(key:key);


   @override
  Widget build(BuildContext context) {
     final ThemeData theme = Theme.of(context);
    return FlatButton(
        key: key,
        child: Text(data,
          style: TextStyle(
            color:textColor,
            fontSize:textSize,
            )
          ),
        onPressed: onPressed,
        shape: _shape(),
    );
  }

  ShapeBorder _shape() {
        switch(stype){
          case RoundStyle.circle:
            return RoundedRectangleBorder(side:side,borderRadius: BorderRadius.circular(100000000));
          case RoundStyle.normal:
            return RoundedRectangleBorder(side:side,borderRadius: BorderRadius.circular(8));
          case RoundStyle.none:
            return  RoundedRectangleBorder(side:side,borderRadius: BorderRadius.circular(0));
          case RoundStyle.custom:
            return  RoundedRectangleBorder(side:side,borderRadius: BorderRadius.circular(radius));
        }
        return  RoundedRectangleBorder(side:side,borderRadius: BorderRadius.circular(0));
  }
 
}



