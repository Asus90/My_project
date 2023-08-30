import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pro/Failure/failure.dart';
import 'package:pro/model/model/model.dart';
import 'package:pro/service/service.dart';

part 'items_bloc_event.dart';
part 'items_bloc_state.dart';
part 'items_bloc_bloc.freezed.dart';

class ItemsBlocBloc extends Bloc<ItemsBlocEvent, ItemsBlocState> {
  ItemsBlocBloc() : super(ItemsBlocState.initial()) {
    on<loadItems>((event, emit) async {
      emit(const ItemsBlocState(modelItem: [], isLoading: true));

      final _result = await Items.getCartItems();

      final FinalResult = _result.fold((MinFailure l) {
        return const ItemsBlocState(modelItem: []);
      }, (List<Model> result) {
        return ItemsBlocState(modelItem: result);
      });
      emit(FinalResult);
    });
  }
}
