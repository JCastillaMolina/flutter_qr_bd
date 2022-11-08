import 'package:flutter/material.dart';
import 'package:flutter_codigo2_qr/ui/general/colors.dart';

class ButtonFilterWidget extends StatelessWidget {
  String text;
  bool isSelected;
  Function onTap;

  ButtonFilterWidget({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Container(
        width: 90,
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? kBrandPrimaryColor : Colors.black.withOpacity(0.06),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : kBrandSecondaryColor,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}
