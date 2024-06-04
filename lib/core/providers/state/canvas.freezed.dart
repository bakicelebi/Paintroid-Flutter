// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'canvas.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Canvas {
  ui.Image? get backgroundImage => throw _privateConstructorUsedError;
  ui.Image? get cachedImage => throw _privateConstructorUsedError;
  ui.Size get size => throw _privateConstructorUsedError;
  CommandManager get commandManager => throw _privateConstructorUsedError;
  GraphicFactory get graphicFactory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CanvasCopyWith<Canvas> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanvasCopyWith<$Res> {
  factory $CanvasCopyWith(Canvas value, $Res Function(Canvas) then) =
      _$CanvasCopyWithImpl<$Res, Canvas>;
  @useResult
  $Res call(
      {ui.Image? backgroundImage,
      ui.Image? cachedImage,
      ui.Size size,
      CommandManager commandManager,
      GraphicFactory graphicFactory});
}

/// @nodoc
class _$CanvasCopyWithImpl<$Res, $Val extends Canvas>
    implements $CanvasCopyWith<$Res> {
  _$CanvasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundImage = freezed,
    Object? cachedImage = freezed,
    Object? size = null,
    Object? commandManager = null,
    Object? graphicFactory = null,
  }) {
    return _then(_value.copyWith(
      backgroundImage: freezed == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as ui.Image?,
      cachedImage: freezed == cachedImage
          ? _value.cachedImage
          : cachedImage // ignore: cast_nullable_to_non_nullable
              as ui.Image?,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as ui.Size,
      commandManager: null == commandManager
          ? _value.commandManager
          : commandManager // ignore: cast_nullable_to_non_nullable
              as CommandManager,
      graphicFactory: null == graphicFactory
          ? _value.graphicFactory
          : graphicFactory // ignore: cast_nullable_to_non_nullable
              as GraphicFactory,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CanvasImplCopyWith<$Res> implements $CanvasCopyWith<$Res> {
  factory _$$CanvasImplCopyWith(
          _$CanvasImpl value, $Res Function(_$CanvasImpl) then) =
      __$$CanvasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ui.Image? backgroundImage,
      ui.Image? cachedImage,
      ui.Size size,
      CommandManager commandManager,
      GraphicFactory graphicFactory});
}

/// @nodoc
class __$$CanvasImplCopyWithImpl<$Res>
    extends _$CanvasCopyWithImpl<$Res, _$CanvasImpl>
    implements _$$CanvasImplCopyWith<$Res> {
  __$$CanvasImplCopyWithImpl(
      _$CanvasImpl _value, $Res Function(_$CanvasImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundImage = freezed,
    Object? cachedImage = freezed,
    Object? size = null,
    Object? commandManager = null,
    Object? graphicFactory = null,
  }) {
    return _then(_$CanvasImpl(
      backgroundImage: freezed == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as ui.Image?,
      cachedImage: freezed == cachedImage
          ? _value.cachedImage
          : cachedImage // ignore: cast_nullable_to_non_nullable
              as ui.Image?,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as ui.Size,
      commandManager: null == commandManager
          ? _value.commandManager
          : commandManager // ignore: cast_nullable_to_non_nullable
              as CommandManager,
      graphicFactory: null == graphicFactory
          ? _value.graphicFactory
          : graphicFactory // ignore: cast_nullable_to_non_nullable
              as GraphicFactory,
    ));
  }
}

/// @nodoc

class _$CanvasImpl implements _Canvas {
  const _$CanvasImpl(
      {this.backgroundImage,
      this.cachedImage,
      required this.size,
      required this.commandManager,
      required this.graphicFactory});

  @override
  final ui.Image? backgroundImage;
  @override
  final ui.Image? cachedImage;
  @override
  final ui.Size size;
  @override
  final CommandManager commandManager;
  @override
  final GraphicFactory graphicFactory;

  @override
  String toString() {
    return 'Canvas(backgroundImage: $backgroundImage, cachedImage: $cachedImage, size: $size, commandManager: $commandManager, graphicFactory: $graphicFactory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CanvasImpl &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage) &&
            (identical(other.cachedImage, cachedImage) ||
                other.cachedImage == cachedImage) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.commandManager, commandManager) ||
                other.commandManager == commandManager) &&
            (identical(other.graphicFactory, graphicFactory) ||
                other.graphicFactory == graphicFactory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, backgroundImage, cachedImage,
      size, commandManager, graphicFactory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CanvasImplCopyWith<_$CanvasImpl> get copyWith =>
      __$$CanvasImplCopyWithImpl<_$CanvasImpl>(this, _$identity);
}

abstract class _Canvas implements Canvas {
  const factory _Canvas(
      {final ui.Image? backgroundImage,
      final ui.Image? cachedImage,
      required final ui.Size size,
      required final CommandManager commandManager,
      required final GraphicFactory graphicFactory}) = _$CanvasImpl;

  @override
  ui.Image? get backgroundImage;
  @override
  ui.Image? get cachedImage;
  @override
  ui.Size get size;
  @override
  CommandManager get commandManager;
  @override
  GraphicFactory get graphicFactory;
  @override
  @JsonKey(ignore: true)
  _$$CanvasImplCopyWith<_$CanvasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
