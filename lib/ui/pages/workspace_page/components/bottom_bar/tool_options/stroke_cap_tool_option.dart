// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:paintroid/core/providers/object/tools/brush_tool_provider.dart';
import 'package:paintroid/ui/shared/custom_action_chip.dart';
import 'package:paintroid/ui/theme/theme.dart';

class StrokeCapToolOption extends ConsumerStatefulWidget {
  const StrokeCapToolOption({super.key});

  @override
  ConsumerState<StrokeCapToolOption> createState() =>
      _StrokeCapToolOptionState();
}

class _StrokeCapToolOptionState extends ConsumerState<StrokeCapToolOption> {
  Color _roundChipBackgroundColor = Colors.blue;
  Color _squareChipBackgroundColor = Colors.white;

  void _changeActionChipBackgroundColor(StrokeCap strokeCap) {
    _roundChipBackgroundColor =
        strokeCap == StrokeCap.round ? Colors.blue : Colors.white;
    _squareChipBackgroundColor =
        strokeCap == StrokeCap.square ? Colors.blue : Colors.white;
    ref.read(brushToolProvider.notifier).updateStrokeCap(strokeCap);
  }

  BorderRadius _getToolPreviewBorderRadius(
      StrokeCap strokeCap, double toolStrokeWidth) {
    if (strokeCap == StrokeCap.round) {
      return BorderRadius.horizontal(
        left: Radius.circular(toolStrokeWidth),
        right: Radius.circular(toolStrokeWidth),
      );
    } else {
      return const BorderRadius.horizontal();
    }
  }

  @override
  void initState() {
    super.initState();
    StrokeCap toolStrokeCapOnInit =
        ref.read(brushToolProvider).paint.strokeCap;
    _roundChipBackgroundColor =
        toolStrokeCapOnInit == StrokeCap.round ? Colors.blue : Colors.white;
    _squareChipBackgroundColor =
        toolStrokeCapOnInit == StrokeCap.square ? Colors.blue : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    final currentPaint = ref.watch(brushToolProvider).paint;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Wrap(
          spacing: 8,
          children: [
            CustomActionChip(
              hint: 'Round stroke',
              chipIcon: Icon(
                Icons.circle,
                color: PaintroidTheme.of(context).shadowColor,
              ),
              onPressed: () =>
                  _changeActionChipBackgroundColor(StrokeCap.round),
              chipBackgroundColor: _roundChipBackgroundColor,
            ),
            CustomActionChip(
              hint: 'Square stroke',
              chipIcon: Icon(
                Icons.square,
                color: PaintroidTheme.of(context).shadowColor,
              ),
              onPressed: () =>
                  _changeActionChipBackgroundColor(StrokeCap.square),
              chipBackgroundColor: _squareChipBackgroundColor,
            ),
          ],
        ),
        const Spacer(),
        Container(
          height: currentPaint.strokeWidth * 0.4,
          width: 130,
          decoration: BoxDecoration(
            color: currentPaint.color,
            borderRadius: _getToolPreviewBorderRadius(
              currentPaint.strokeCap,
              currentPaint.strokeWidth,
            ),
          ),
        ),
      ],
    );
  }
}
