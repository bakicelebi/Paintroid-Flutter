// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:paintroid/core/providers/object/tools/tool_box/toolbox_state_provider.dart';
import 'package:paintroid/core/tools/tool_data.dart';
import 'package:paintroid/ui/shared/icon_button_with_label.dart';
import 'package:paintroid/ui/shared/icon_svg.dart';

class ToolButton extends StatelessWidget {
  final ToolData toolData;

  const ToolButton({
    Key? key,
    required this.toolData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return SizedBox(
          width: 50.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: IconButtonWithLabel(
              icon: IconSvg(
                path: toolData.svgAssetPath,
                height: 30.0,
                width: 30.0,
                color: Colors.white,
              ),
              label: toolData.name,
              onPressed: () {
                Navigator.pop(context);
                ref.read(toolBoxStateProvider.notifier).switchTool(toolData);
              },
            ),
          ),
        );
      },
    );
  }
}