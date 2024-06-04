// Mocks generated by Mockito 5.4.4 from annotations
// in paintroid/test/unit/workspace/render_image_for_export_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes

// Dart imports:
import 'dart:ui' as _i2;

// Package imports:
import 'package:mockito/mockito.dart' as _i1;

// Project imports:
import 'package:paintroid/core/providers/state/canvas.dart' as _i5;

import 'package:paintroid/core/commands/command_implementation/command.dart'
    as _i6;
import 'package:paintroid/core/commands/command_implementation/graphic/graphic_command.dart'
    as _i7;
import 'package:paintroid/core/commands/command_manager/command_manager.dart'
    as _i3;
import 'package:paintroid/core/commands/graphic_factory/graphic_factory.dart'
    as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeSize_0 extends _i1.SmartFake implements _i2.Size {
  _FakeSize_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCommandManager_1 extends _i1.SmartFake
    implements _i3.CommandManager {
  _FakeCommandManager_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGraphicFactory_2 extends _i1.SmartFake
    implements _i4.GraphicFactory {
  _FakeGraphicFactory_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _Fake$CanvasCopyWith_3<$Res> extends _i1.SmartFake
    implements _i5.$CanvasCopyWith<$Res> {
  _Fake$CanvasCopyWith_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Canvas].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockCanvas extends _i1.Mock implements _i5.Canvas {
  MockCanvas() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Size get size => (super.noSuchMethod(
        Invocation.getter(#size),
        returnValue: _FakeSize_0(
          this,
          Invocation.getter(#size),
        ),
      ) as _i2.Size);

  @override
  _i3.CommandManager get commandManager => (super.noSuchMethod(
        Invocation.getter(#commandManager),
        returnValue: _FakeCommandManager_1(
          this,
          Invocation.getter(#commandManager),
        ),
      ) as _i3.CommandManager);

  @override
  _i4.GraphicFactory get graphicFactory => (super.noSuchMethod(
        Invocation.getter(#graphicFactory),
        returnValue: _FakeGraphicFactory_2(
          this,
          Invocation.getter(#graphicFactory),
        ),
      ) as _i4.GraphicFactory);

  @override
  _i5.$CanvasCopyWith<_i5.Canvas> get copyWith => (super.noSuchMethod(
        Invocation.getter(#copyWith),
        returnValue: _Fake$CanvasCopyWith_3<_i5.Canvas>(
          this,
          Invocation.getter(#copyWith),
        ),
      ) as _i5.$CanvasCopyWith<_i5.Canvas>);
}

/// A class which mocks [CommandManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockCommandManager extends _i1.Mock implements _i3.CommandManager {
  MockCommandManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Iterable<_i6.Command> get history => (super.noSuchMethod(
        Invocation.getter(#history),
        returnValue: <_i6.Command>[],
      ) as Iterable<_i6.Command>);

  @override
  int get count => (super.noSuchMethod(
        Invocation.getter(#count),
        returnValue: 0,
      ) as int);

  @override
  void addGraphicCommand(_i7.GraphicCommand? command) => super.noSuchMethod(
        Invocation.method(
          #addGraphicCommand,
          [command],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void executeLastCommand(_i2.Canvas? canvas) => super.noSuchMethod(
        Invocation.method(
          #executeLastCommand,
          [canvas],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void executeAllCommands(_i2.Canvas? canvas) => super.noSuchMethod(
        Invocation.method(
          #executeAllCommands,
          [canvas],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void discardLastCommand() => super.noSuchMethod(
        Invocation.method(
          #discardLastCommand,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void clearHistory({Iterable<_i6.Command>? newCommands}) => super.noSuchMethod(
        Invocation.method(
          #clearHistory,
          [],
          {#newCommands: newCommands},
        ),
        returnValueForMissingStub: null,
      );
}
