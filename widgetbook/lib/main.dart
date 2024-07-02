import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      directories: directories,
      appBuilder: (context, child) => ColoredBox(
        color: const Color(0xFF404040),
        child: child,
      ),
      integrations: [ WidgetbookCloudIntegration() ],
      addons: <WidgetbookAddon>[
        MaterialThemeAddon(
          themes: <WidgetbookTheme<ThemeData>>[
            WidgetbookTheme<ThemeData>(
              name: 'Light',
              data: ThemeData.light(),
            ),
            WidgetbookTheme<ThemeData>(
              name: 'Dark',
              data: ThemeData.dark(),
            ),
          ],
        ),
        AlignmentAddon(),
        DeviceFrameAddon(
          devices: <DeviceInfo>[
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone13,
            Devices.android.samsungGalaxyA50
          ],
          initialDevice: Devices.ios.iPhone13,
        )
      ]
    );
  }
  
}
