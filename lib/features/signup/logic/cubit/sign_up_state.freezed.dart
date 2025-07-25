// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SignUpState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpInitial,
    required TResult Function() signUpLoading,
    required TResult Function(T data) signUpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUpError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpInitial,
    TResult? Function()? signUpLoading,
    TResult? Function(T data)? signUpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUpError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpInitial,
    TResult Function()? signUpLoading,
    TResult Function(T data)? signUpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUpError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpInitial<T> value) signUpInitial,
    required TResult Function(SignUpLoading<T> value) signUpLoading,
    required TResult Function(SignUpSuccess<T> value) signUpSuccess,
    required TResult Function(SignUpError<T> value) signUpError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpInitial<T> value)? signUpInitial,
    TResult? Function(SignUpLoading<T> value)? signUpLoading,
    TResult? Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult? Function(SignUpError<T> value)? signUpError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpInitial<T> value)? signUpInitial,
    TResult Function(SignUpLoading<T> value)? signUpLoading,
    TResult Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult Function(SignUpError<T> value)? signUpError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<T, $Res> {
  factory $SignUpStateCopyWith(
    SignUpState<T> value,
    $Res Function(SignUpState<T>) then,
  ) = _$SignUpStateCopyWithImpl<T, $Res, SignUpState<T>>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<T, $Res, $Val extends SignUpState<T>>
    implements $SignUpStateCopyWith<T, $Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignUpInitialImplCopyWith<T, $Res> {
  factory _$$SignUpInitialImplCopyWith(
    _$SignUpInitialImpl<T> value,
    $Res Function(_$SignUpInitialImpl<T>) then,
  ) = __$$SignUpInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SignUpInitialImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$SignUpInitialImpl<T>>
    implements _$$SignUpInitialImplCopyWith<T, $Res> {
  __$$SignUpInitialImplCopyWithImpl(
    _$SignUpInitialImpl<T> _value,
    $Res Function(_$SignUpInitialImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpInitialImpl<T> implements _SignUpInitial<T> {
  const _$SignUpInitialImpl();

  @override
  String toString() {
    return 'SignUpState<$T>.signUpInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpInitial,
    required TResult Function() signUpLoading,
    required TResult Function(T data) signUpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUpError,
  }) {
    return signUpInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpInitial,
    TResult? Function()? signUpLoading,
    TResult? Function(T data)? signUpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUpError,
  }) {
    return signUpInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpInitial,
    TResult Function()? signUpLoading,
    TResult Function(T data)? signUpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUpError,
    required TResult orElse(),
  }) {
    if (signUpInitial != null) {
      return signUpInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpInitial<T> value) signUpInitial,
    required TResult Function(SignUpLoading<T> value) signUpLoading,
    required TResult Function(SignUpSuccess<T> value) signUpSuccess,
    required TResult Function(SignUpError<T> value) signUpError,
  }) {
    return signUpInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpInitial<T> value)? signUpInitial,
    TResult? Function(SignUpLoading<T> value)? signUpLoading,
    TResult? Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult? Function(SignUpError<T> value)? signUpError,
  }) {
    return signUpInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpInitial<T> value)? signUpInitial,
    TResult Function(SignUpLoading<T> value)? signUpLoading,
    TResult Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult Function(SignUpError<T> value)? signUpError,
    required TResult orElse(),
  }) {
    if (signUpInitial != null) {
      return signUpInitial(this);
    }
    return orElse();
  }
}

abstract class _SignUpInitial<T> implements SignUpState<T> {
  const factory _SignUpInitial() = _$SignUpInitialImpl<T>;
}

/// @nodoc
abstract class _$$SignUpLoadingImplCopyWith<T, $Res> {
  factory _$$SignUpLoadingImplCopyWith(
    _$SignUpLoadingImpl<T> value,
    $Res Function(_$SignUpLoadingImpl<T>) then,
  ) = __$$SignUpLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SignUpLoadingImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$SignUpLoadingImpl<T>>
    implements _$$SignUpLoadingImplCopyWith<T, $Res> {
  __$$SignUpLoadingImplCopyWithImpl(
    _$SignUpLoadingImpl<T> _value,
    $Res Function(_$SignUpLoadingImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpLoadingImpl<T> implements SignUpLoading<T> {
  const _$SignUpLoadingImpl();

  @override
  String toString() {
    return 'SignUpState<$T>.signUpLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpInitial,
    required TResult Function() signUpLoading,
    required TResult Function(T data) signUpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUpError,
  }) {
    return signUpLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpInitial,
    TResult? Function()? signUpLoading,
    TResult? Function(T data)? signUpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUpError,
  }) {
    return signUpLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpInitial,
    TResult Function()? signUpLoading,
    TResult Function(T data)? signUpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUpError,
    required TResult orElse(),
  }) {
    if (signUpLoading != null) {
      return signUpLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpInitial<T> value) signUpInitial,
    required TResult Function(SignUpLoading<T> value) signUpLoading,
    required TResult Function(SignUpSuccess<T> value) signUpSuccess,
    required TResult Function(SignUpError<T> value) signUpError,
  }) {
    return signUpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpInitial<T> value)? signUpInitial,
    TResult? Function(SignUpLoading<T> value)? signUpLoading,
    TResult? Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult? Function(SignUpError<T> value)? signUpError,
  }) {
    return signUpLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpInitial<T> value)? signUpInitial,
    TResult Function(SignUpLoading<T> value)? signUpLoading,
    TResult Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult Function(SignUpError<T> value)? signUpError,
    required TResult orElse(),
  }) {
    if (signUpLoading != null) {
      return signUpLoading(this);
    }
    return orElse();
  }
}

abstract class SignUpLoading<T> implements SignUpState<T> {
  const factory SignUpLoading() = _$SignUpLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SignUpSuccessImplCopyWith<T, $Res> {
  factory _$$SignUpSuccessImplCopyWith(
    _$SignUpSuccessImpl<T> value,
    $Res Function(_$SignUpSuccessImpl<T>) then,
  ) = __$$SignUpSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SignUpSuccessImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$SignUpSuccessImpl<T>>
    implements _$$SignUpSuccessImplCopyWith<T, $Res> {
  __$$SignUpSuccessImplCopyWithImpl(
    _$SignUpSuccessImpl<T> _value,
    $Res Function(_$SignUpSuccessImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = freezed}) {
    return _then(
      _$SignUpSuccessImpl<T>(
        freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                as T,
      ),
    );
  }
}

/// @nodoc

class _$SignUpSuccessImpl<T> implements SignUpSuccess<T> {
  const _$SignUpSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SignUpState<$T>.signUpSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSuccessImplCopyWith<T, _$SignUpSuccessImpl<T>> get copyWith =>
      __$$SignUpSuccessImplCopyWithImpl<T, _$SignUpSuccessImpl<T>>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpInitial,
    required TResult Function() signUpLoading,
    required TResult Function(T data) signUpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUpError,
  }) {
    return signUpSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpInitial,
    TResult? Function()? signUpLoading,
    TResult? Function(T data)? signUpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUpError,
  }) {
    return signUpSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpInitial,
    TResult Function()? signUpLoading,
    TResult Function(T data)? signUpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUpError,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpInitial<T> value) signUpInitial,
    required TResult Function(SignUpLoading<T> value) signUpLoading,
    required TResult Function(SignUpSuccess<T> value) signUpSuccess,
    required TResult Function(SignUpError<T> value) signUpError,
  }) {
    return signUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpInitial<T> value)? signUpInitial,
    TResult? Function(SignUpLoading<T> value)? signUpLoading,
    TResult? Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult? Function(SignUpError<T> value)? signUpError,
  }) {
    return signUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpInitial<T> value)? signUpInitial,
    TResult Function(SignUpLoading<T> value)? signUpLoading,
    TResult Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult Function(SignUpError<T> value)? signUpError,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccess<T> implements SignUpState<T> {
  const factory SignUpSuccess(final T data) = _$SignUpSuccessImpl<T>;

  T get data;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpSuccessImplCopyWith<T, _$SignUpSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpErrorImplCopyWith<T, $Res> {
  factory _$$SignUpErrorImplCopyWith(
    _$SignUpErrorImpl<T> value,
    $Res Function(_$SignUpErrorImpl<T>) then,
  ) = __$$SignUpErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$SignUpErrorImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$SignUpErrorImpl<T>>
    implements _$$SignUpErrorImplCopyWith<T, $Res> {
  __$$SignUpErrorImplCopyWithImpl(
    _$SignUpErrorImpl<T> _value,
    $Res Function(_$SignUpErrorImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? apiErrorModel = null}) {
    return _then(
      _$SignUpErrorImpl<T>(
        null == apiErrorModel
            ? _value.apiErrorModel
            : apiErrorModel // ignore: cast_nullable_to_non_nullable
                as ApiErrorModel,
      ),
    );
  }
}

/// @nodoc

class _$SignUpErrorImpl<T> implements SignUpError<T> {
  const _$SignUpErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'SignUpState<$T>.signUpError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpErrorImplCopyWith<T, _$SignUpErrorImpl<T>> get copyWith =>
      __$$SignUpErrorImplCopyWithImpl<T, _$SignUpErrorImpl<T>>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpInitial,
    required TResult Function() signUpLoading,
    required TResult Function(T data) signUpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUpError,
  }) {
    return signUpError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpInitial,
    TResult? Function()? signUpLoading,
    TResult? Function(T data)? signUpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUpError,
  }) {
    return signUpError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpInitial,
    TResult Function()? signUpLoading,
    TResult Function(T data)? signUpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUpError,
    required TResult orElse(),
  }) {
    if (signUpError != null) {
      return signUpError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpInitial<T> value) signUpInitial,
    required TResult Function(SignUpLoading<T> value) signUpLoading,
    required TResult Function(SignUpSuccess<T> value) signUpSuccess,
    required TResult Function(SignUpError<T> value) signUpError,
  }) {
    return signUpError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpInitial<T> value)? signUpInitial,
    TResult? Function(SignUpLoading<T> value)? signUpLoading,
    TResult? Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult? Function(SignUpError<T> value)? signUpError,
  }) {
    return signUpError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpInitial<T> value)? signUpInitial,
    TResult Function(SignUpLoading<T> value)? signUpLoading,
    TResult Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult Function(SignUpError<T> value)? signUpError,
    required TResult orElse(),
  }) {
    if (signUpError != null) {
      return signUpError(this);
    }
    return orElse();
  }
}

abstract class SignUpError<T> implements SignUpState<T> {
  const factory SignUpError(final ApiErrorModel apiErrorModel) =
      _$SignUpErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpErrorImplCopyWith<T, _$SignUpErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
