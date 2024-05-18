import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:paintroid/core/commands/command_factory/command_factory.dart';
import 'package:paintroid/core/commands/command_implementation/graphic/shapes_command.dart';
import 'package:paintroid/core/commands/command_manager/command_manager.dart';
import 'package:paintroid/core/commands/graphic_factory/graphic_factory.dart';
import 'package:paintroid/core/enums/tool_types.dart';
import 'package:paintroid/core/tools/tool.dart';

class ShapesTool extends Tool with EquatableMixin {
  ShapesTool({
    required super.paint,
    required super.commandFactory,
    required super.commandManager,
    required this.graphicFactory,
  });

  final ToolType type = ToolType.SHAPES;

  final GraphicFactory graphicFactory;

  @override
  void onDown(Offset point) {
    final rectToDraw = Rect.fromCenter(center: point, width: 150, height: 150);
    final paint = graphicFactory.copyPaint(this.paint);
    final command = ShapesCommand(rectToDraw, ShapeType.rectangle, paint);
    commandManager.addGraphicCommand(command);
  }

  @override
  void onDrag(Offset point) {}

  @override
  void onUp(Offset? point) {}

  @override
  void onCancel() {}

  @override
  List<Object?> get props => [commandManager, commandFactory];

  ShapesTool copyWith({
    Paint? paint,
    CommandFactory? commandFactory,
    CommandManager? commandManager,
    GraphicFactory? graphicFactory,
    ToolType? type,
  }) {
    return ShapesTool(
      paint: paint ?? this.paint,
      commandFactory: commandFactory ?? this.commandFactory,
      commandManager: commandManager ?? this.commandManager,
      graphicFactory: graphicFactory ?? this.graphicFactory,
    );
  }
}
