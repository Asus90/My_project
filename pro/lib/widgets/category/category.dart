import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class categoryScreen extends StatelessWidget {
  const categoryScreen({
    super.key,
    required this.idx,
  });
  final int idx;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(idx as String)),
      color: Colors.amber,
    );
  }
}
