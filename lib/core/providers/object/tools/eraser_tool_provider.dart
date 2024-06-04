// Flutter imports:
import 'package:flutter/rendering.dart';

// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:paintroid/core/commands/command_factory/command_factory_provider.dart';
import 'package:paintroid/core/commands/command_manager/command_manager_provider.dart';
import 'package:paintroid/core/commands/graphic_factory/graphic_factory_provider.dart';
import 'package:paintroid/core/tools/implementation/brush_tool.dart';

part 'eraser_tool_provider.g.dart';

@riverpod
class EraserToolProvider extends _$EraserToolProvider {
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
}