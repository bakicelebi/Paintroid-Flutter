// Flutter imports:
import 'package:flutter/painting.dart';

// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:paintroid/core/commands/command_factory/command_factory_provider.dart';
import 'package:paintroid/core/commands/command_manager/command_manager_provider.dart';
import 'package:paintroid/core/commands/graphic_factory/graphic_factory_provider.dart';
import 'package:paintroid/core/tools/implementation/brush_tool.dart';

part 'brush_tool_provider.g.dart';

@riverpod
class BrushToolProvider extends _$BrushToolProvider {
  @override
  BrushTool build() {
    return BrushTool(
      paint: ref.watch(graphicFactoryProvider).createPaint()
        ..style = PaintingStyle.stroke
        ..strokeJoin = StrokeJoin.round
        ..color = const Color(0xFF830000)
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 25,
      commandManager: ref.watch(commandManagerProvider),
      commandFactory: ref.watch(commandFactoryProvider),
      graphicFactory: ref.watch(graphicFactoryProvider),
    );
  }

  void updateStrokeWidth(double newStrokeWidth) {
    Paint newPaint = state.paint..strokeWidth = newStrokeWidth;
    state = state.copyWith(paint: newPaint);
  }

  void updateStrokeCap(StrokeCap newStrokeCap) {
    Paint newPaint = state.paint..strokeCap = newStrokeCap;
    state = state.copyWith(paint: newPaint);
  }

  void updateColor(Color newColor) {
    Paint newPaint = state.paint..color = newColor;
    state = state.copyWith(paint: newPaint);
  }

  void updateBlendMode(BlendMode newMode) {
    Paint newPaint = state.paint..blendMode = newMode;
    state = state.copyWith(paint: newPaint);
  }
}
