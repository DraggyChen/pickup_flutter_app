import 'package:flutter/material.dart';
import 'package:pickup/view/navigation/navigationStyles.dart';

class NavigationButton extends StatelessWidget {
  final String imagePath;
  final String imagePathSelected;
  final VoidCallback onPressed;
  final bool isSelected; // Add this

  NavigationButton({required this.imagePath,required this.imagePathSelected, required this.onPressed, required this.isSelected}); // Add isSelected here

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: NavigationStyles.navButton.copyWith(
          padding: MaterialStateProperty.all(EdgeInsets.zero), // Set padding to zero
        ),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              height: 150,
              width: 150,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(isSelected ? imagePathSelected : imagePath, width: 40, height: 40,) // Check isSelected here
                ],
              ),
            ),
          ),
        )
    );
  }
}

