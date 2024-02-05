import 'package:base_flutter_bloc/presentation/utils/color_constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200.0,
          decoration: BoxDecoration(
            color: mainHeaderColor,
            borderRadius: BorderRadius.vertical(
              bottom:
                  Radius.elliptical(MediaQuery.of(context).size.width, 50.0),
            ),
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Row(
                  children: [

                  ],
                ),
                Center(
                  child: Text("OPTUS"),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
