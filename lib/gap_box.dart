import "package:flutter/material.dart";

class GapBox extends StatelessWidget {
   const GapBox({super.key,required this.givenHeight });

  final double givenHeight;

  @override
  build(context) {
    return SizedBox(
      height: givenHeight,
    );
  }
}
