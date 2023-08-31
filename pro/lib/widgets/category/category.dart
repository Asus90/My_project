import 'dart:ui';

import 'package:dartz/dartz_unsafe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro/items_bloc/bloc/items_bloc_bloc.dart';
import 'package:pro/widgets/Chart/chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class categoryScreen extends StatelessWidget {
  categoryScreen({required this.idx});
  final idx;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemsBlocBloc, ItemsBlocState>(
      builder: (context, state) {
        if (state.modelItem.isEmpty) {
          return Text("Loading...");
        }
        final datas = state.modelItem[idx];

        final all = state.modelItem[idx].criteria!.length;
        print(all);

        return Container(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'lib/asset/depositphotos_465790556-stock-photo-shallow-depth-field-selective-focus.webp'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(),
                ),
              ),
              Center(
                child: ListView.builder(
                  itemCount: all,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 400,
                      height: 100,
                      color: Colors.transparent,
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.15),
                                  Color.fromARGB(255, 255, 253, 253)
                                      .withOpacity(0.05),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  datas.criteria![index].text!,
                                  style: GoogleFonts.lato(
                                    shadows: [
                                      Shadow(offset: Offset.fromDirection(1.0))
                                    ],
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: BlocBuilder<ItemsBlocBloc, ItemsBlocState>(
                    builder: (context, state) {
                      return ValueChart();
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
