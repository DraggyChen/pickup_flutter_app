import 'package:flutter/material.dart';
import 'package:pickup/view/trafficInfo/TrafficStyles.dart';

class BlockInfoButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  BlockInfoButton(
      {required this.icon, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TrafficStyles.blockButton.copyWith(
        padding: MaterialStateProperty.all(EdgeInsets.zero), // Set padding to zero
      ),
      onPressed: onPressed,
      /* 波紋點擊效果Ink, InkWell，若要調整Button大小得順便調container大小！ */
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 400,
            width: 400,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: Colors.black, size: 50,),
                SizedBox(height: 20),
                Text(
                  text,
                  style: TrafficStyles.BlockText,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
