part of 'items_bloc_bloc.dart';

@freezed
class ItemsBlocEvent with _$ItemsBlocEvent {
  const factory ItemsBlocEvent.loadItems() = loadItems;
}
