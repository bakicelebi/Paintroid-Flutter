// Dart imports:
import 'dart:ui';

// Flutter imports:
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:paintroid/core/commands/command_implementation/graphic/graphic_command.dart';
import 'package:paintroid/core/commands/utils/path_with_action_history.dart';
import 'package:paintroid/core/json_serialization/converter/paint_converter.dart';
import 'package:paintroid/core/json_serialization/converter/path_with_action_history_converter.dart';
import 'package:paintroid/core/json_serialization/versioning/serializer_version.dart';
import 'package:paintroid/core/json_serialization/versioning/version_strategy.dart';

part 'draw_path_command.g.dart';

@JsonSerializable()
class DrawPathCommand extends GraphicCommand {
  final String type;
  final int version;

  DrawPathCommand(
    this.path,
    super.paint, {
    this.type = SerializerType.DRAW_PATH_COMMAND,
    int? version,
  }) : version = version ??
            VersionStrategyManager.strategy.getDrawPathCommandVersion();

  @PathWithActionHistoryConverter()
  final PathWithActionHistory path;

  @override
  void call(Canvas canvas) {
    canvas.drawPath(path, paint);
  }

  @override
  List<Object?> get props => [paint, path, type];

  @override
  Map<String, dynamic> toJson() => _$DrawPathCommandToJson(this);

  factory DrawPathCommand.fromJson(Map<String, dynamic> json) {
    int version = json['version'] as int;

    switch (version) {
      case Version.v1:
        return _$DrawPathCommandFromJson(json);
      case Version.v2:
      // For different versions of DrawPathCommand the deserialization
      // has to be implemented manually.
      // Autogenerated code can only be used for one version
      default:
        return _$DrawPathCommandFromJson(json);
    }
  }
}