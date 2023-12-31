import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
class MinFailure with _$MinFailure {
  const factory MinFailure.ClientFailure() = _ClientFailure;
  const factory MinFailure.serverFailure() = _serverFailure;
}
