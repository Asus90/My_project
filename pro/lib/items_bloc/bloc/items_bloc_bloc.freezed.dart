// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemsBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loadItems value) loadItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(loadItems value)? loadItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loadItems value)? loadItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsBlocEventCopyWith<$Res> {
  factory $ItemsBlocEventCopyWith(
          ItemsBlocEvent value, $Res Function(ItemsBlocEvent) then) =
      _$ItemsBlocEventCopyWithImpl<$Res, ItemsBlocEvent>;
}

/// @nodoc
class _$ItemsBlocEventCopyWithImpl<$Res, $Val extends ItemsBlocEvent>
    implements $ItemsBlocEventCopyWith<$Res> {
  _$ItemsBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$loadItemsCopyWith<$Res> {
  factory _$$loadItemsCopyWith(
          _$loadItems value, $Res Function(_$loadItems) then) =
      __$$loadItemsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadItemsCopyWithImpl<$Res>
    extends _$ItemsBlocEventCopyWithImpl<$Res, _$loadItems>
    implements _$$loadItemsCopyWith<$Res> {
  __$$loadItemsCopyWithImpl(
      _$loadItems _value, $Res Function(_$loadItems) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadItems implements loadItems {
  const _$loadItems();

  @override
  String toString() {
    return 'ItemsBlocEvent.loadItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadItems,
  }) {
    return loadItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadItems,
  }) {
    return loadItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadItems,
    required TResult orElse(),
  }) {
    if (loadItems != null) {
      return loadItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loadItems value) loadItems,
  }) {
    return loadItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(loadItems value)? loadItems,
  }) {
    return loadItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loadItems value)? loadItems,
    required TResult orElse(),
  }) {
    if (loadItems != null) {
      return loadItems(this);
    }
    return orElse();
  }
}

abstract class loadItems implements ItemsBlocEvent {
  const factory loadItems() = _$loadItems;
}

/// @nodoc
mixin _$ItemsBlocState {
  List<Model12> get modelItem => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemsBlocStateCopyWith<ItemsBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsBlocStateCopyWith<$Res> {
  factory $ItemsBlocStateCopyWith(
          ItemsBlocState value, $Res Function(ItemsBlocState) then) =
      _$ItemsBlocStateCopyWithImpl<$Res, ItemsBlocState>;
  @useResult
  $Res call({List<Model12> modelItem, dynamic isLoading});
}

/// @nodoc
class _$ItemsBlocStateCopyWithImpl<$Res, $Val extends ItemsBlocState>
    implements $ItemsBlocStateCopyWith<$Res> {
  _$ItemsBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelItem = null,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      modelItem: null == modelItem
          ? _value.modelItem
          : modelItem // ignore: cast_nullable_to_non_nullable
              as List<Model12>,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ItemsBlocStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Model12> modelItem, dynamic isLoading});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ItemsBlocStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelItem = null,
    Object? isLoading = freezed,
  }) {
    return _then(_$_Initial(
      modelItem: null == modelItem
          ? _value._modelItem
          : modelItem // ignore: cast_nullable_to_non_nullable
              as List<Model12>,
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required final List<Model12> modelItem, this.isLoading})
      : _modelItem = modelItem;

  final List<Model12> _modelItem;
  @override
  List<Model12> get modelItem {
    if (_modelItem is EqualUnmodifiableListView) return _modelItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modelItem);
  }

  @override
  final dynamic isLoading;

  @override
  String toString() {
    return 'ItemsBlocState(modelItem: $modelItem, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._modelItem, _modelItem) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_modelItem),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ItemsBlocState {
  const factory _Initial(
      {required final List<Model12> modelItem,
      final dynamic isLoading}) = _$_Initial;

  @override
  List<Model12> get modelItem;
  @override
  dynamic get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
