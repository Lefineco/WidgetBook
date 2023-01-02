import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetbook/widgetbook.dart';

import 'core/components/base_checkbox.dart';
import 'core/components/base_chip.dart';
import 'core/components/base_circle_avatar.dart';
import 'core/components/base_elevated_button.dart';
import 'core/components/base_floating_action_button.dart';
import 'core/components/base_form.dart';
import 'core/components/base_form_input.dart';
import 'core/components/base_radio_button.dart';
import 'core/components/base_text_area.dart';
import 'core/components/base_toggle_switch.dart';
import 'core/init/notifier/provider_list.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      categories: [
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'Elevated Button',
                  builder: (context) => const BaseButton(),
                ),
                WidgetbookUseCase(
                  name: 'Floating Action Button',
                  builder: (context) => const BaseFloatingActionButton(),
                ),
                WidgetbookUseCase(
                  name: 'Check box list tile',
                  builder: (context) => const BaseCheckBox(),
                ),
                WidgetbookUseCase(
                  name: 'Radio Button',
                  builder: (context) => const BaseRadioButton(),
                ),
                WidgetbookUseCase(
                  name: 'Cupertino Switch Button',
                  builder: (context) => const BaseToggleSwitch(),
                ),
                WidgetbookUseCase(
                  name: 'Chip',
                  builder: (context) => const BaseChip(),
                ),
                WidgetbookUseCase(
                  name: 'Text Input',
                  builder: (context) => const BaseFormInput(),
                ),
                WidgetbookUseCase(
                  name: 'Circle Avatar',
                  builder: (context) => const BaseCircleAvatar(),
                ),
                WidgetbookUseCase(
                  name: 'Base Text Area',
                  builder: (context) => const BaseTextArea(),
                ),
                WidgetbookUseCase(
                  name: 'Base Form',
                  builder: (context) => const BaseForm(),
                ),
              ],
            ),
          ],
        ),
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: ref.watch(themeNotifierProvider),
        ), // dummy theme
      ],
      appInfo: AppInfo(name: 'Lefine App'),
    );
  }
}
