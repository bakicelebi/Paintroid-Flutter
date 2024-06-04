// Package imports:

// Flutter imports:
import 'package:flutter/painting.dart';

// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:paintroid/core/commands/command_factory/command_factory_provider.dart';
import 'package:paintroid/core/commands/command_manager/command_manager_provider.dart';
import 'package:paintroid/core/commands/graphic_factory/graphic_factory_provider.dart';
import 'package:paintroid/core/tools/implementation/hand_tool.dart';

part 'hand_tool_provider.g.dart';

@riverpod
class HandToolProvider extends _$HandToolProvider {
  @override
  HandTool build() {
    return HandTool(
    paint: ref.watch(graphicFactoryProvider).createPaint()
        ..style = PaintingStyle.stroke
        ..strokeJoin = StrokeJoin.round
        ..color = const Color(0xFF830000)
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 25,
    commandManager: ref.watch(commandManagerProvider),
    commandFactory: ref.watch(commandFactoryProvider),
  );
  }
}