part of 'items_bloc_bloc.dart';

@freezed
class ItemsBlocState with _$ItemsBlocState {
  const factory ItemsBlocState({required List<Model12> modelItem, isLoading}) =
      _Initial;

  factory ItemsBlocState.initial() =>
      ItemsBlocState(modelItem: [], isLoading: false);
}
