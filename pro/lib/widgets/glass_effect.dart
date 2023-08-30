import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:pro/model/model/model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro/widgets/category/category.dart';

class FrostedGlassBox extends StatelessWidget {
  const FrostedGlassBox(
      {Key? key,
      required this.theWidth,
      required this.theHeight,
      required this.data,
      required this.idx})
      : super(key: key);

  final theWidth;
  final Model data;
  final int idx;
  final theHeight;

  @override
  Widget build(BuildContext context) {
    final String? cr = data.color;

    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => categoryScreen(
              idx: idx,
            ),
          ));
        },
        child: Container(
          width: theWidth,
          height: theHeight,
          color: Colors.transparent,
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 4.0,
                  sigmaY: 4.0,
                ),
                child: Container(),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 255, 255, 255).withOpacity(0.15),
                        Color.fromARGB(255, 255, 253, 253).withOpacity(0.05),
                      ]),
                ),
              ),
              Center(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      data.name!,
                      style: GoogleFonts.lato(
                        shadows: [Shadow(offset: Offset.fromDirection(1.0))],
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    data.tag!,
                    style: GoogleFonts.lato(
                      shadows: [Shadow(offset: Offset.fromDirection(1.0))],
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 20,
                      color: cr == "green"
                          ? const Color.fromARGB(255, 0, 255, 8)
                          : const Color.fromARGB(255, 255, 31, 15),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
