import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pro/API/api.dart';
import 'package:pro/model/model/model.dart';

import 'package:pro/Failure/failure.dart';
import 'package:pro/model/model12/model12.dart';

class Items {
  static Future<Either<MinFailure, List<Model12>>> getCartItems() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(APiEndpoints.getItems);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Model12> categories = (response.data as List)
            .map((categoryJson) => Model12.fromJson(categoryJson))
            .toList();

        return Right(categories);
      } else {
        return const Left(MinFailure.ClientFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MinFailure.ClientFailure());
    }
  }
}
