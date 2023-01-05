import 'dart:async';

import 'package:Lefine/core/widget/buttons/base_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kartal/kartal.dart';
import 'package:widgetbook/widgetbook.dart';

import 'core/init/notifier/provider_list.dart';
import 'core/init/theme/app_theme_dark.dart';
import 'core/init/theme/app_theme_light.dart';
import 'core/widget/buttons/base_checkbox.dart';
import 'core/widget/buttons/base_checkbox_list_tile.dart';

import 'core/widget/buttons/base_chip.dart';
import 'core/widget/buttons/base_circle_avatar.dart';

import 'core/widget/buttons/base_elevated_icon_button.dart';
import 'core/widget/buttons/base_floating_action_button.dart';

import 'core/widget/form/base_form.dart';
import 'core/widget/input/base_form_input.dart';
import 'core/widget/buttons/base_radio_button.dart';
import 'core/widget/buttons/base_toggle_switch.dart';
import 'core/widget/input/base_text_area.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  bool _enable = false;

  Future<void> promiseToFuture() async {
    await Future.delayed(Duration(seconds: 2), () {
      return null;
    });
  }

  void toggleTheme(
    WidgetRef ref,
  ) {
    ref.read(themeNotifierProvider.notifier).toggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      categories: [
        WidgetbookCategory(
          name: 'Components',
          widgets: [
            WidgetbookComponent(
              name: 'Buttons',
              useCases: [
                WidgetbookUseCase(
                    name: 'Elevated Icon Button',
                    builder: (context) => Center(
                        child: BaseElevatedIconButton(
                            title: 'Label',
                            onTap: () {
                              return promiseToFuture();
                            },
                            icon: CupertinoIcons.add))),
                WidgetbookUseCase(
                  name: 'Elevated Button',
                  builder: (context) => Center(
                      child: BaseElevatedButton(
                          onTap: () {
                            return promiseToFuture();
                          },
                          title: 'Label')),
                ),
                WidgetbookUseCase(
                  name: 'Floating Action Button',
                  builder: (context) => Center(
                    child: BaseFloatingActionButton(
                        onTap: () async {
                          return promiseToFuture();
                        },
                        icon: CupertinoIcons.add),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Checkbox',
                  builder: (context) => Center(child: const BaseCheckBox()),
                ),
                WidgetbookUseCase(
                  name: 'Checkbox ListTile',
                  builder: (context) => Center(
                      child: Padding(
                    padding: context.horizontalPaddingNormal,
                    child: BaseCheckBoxListTile(
                      title: "Label",
                    ),
                  )),
                ),
                WidgetbookUseCase(
                  name: 'Radio Button',
                  builder: (context) => const BaseRadioButton(),
                ),
                WidgetbookUseCase(
                  name: 'Cupertino Switch Button',
                  builder: (context) => Center(
                    child: BaseSwitch(
                      value: _enable,
                      onChanged: (bool value) {
                        setState(() {
                          _enable = value;
                        });
                      },
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Chip',
                  builder: (context) => BaseChip(),
                ),
                WidgetbookUseCase(
                  name: 'Circle Avatar',
                  builder: (context) => const BaseCircleAvatar(),
                ),
                WidgetbookUseCase(
                  name: 'Base Text Area',
                  builder: (context) => Padding(
                    padding: context.horizontalPaddingNormal,
                    child: const BaseTextArea(),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: "Form",
              useCases: [
                WidgetbookUseCase(
                  name: 'Base Form',
                  builder: (context) => BaseForm(onTap: () {
                    return promiseToFuture();
                  }),
                ),
              ],
            ),
            WidgetbookComponent(
              name: "Text Inputs",
              useCases: [
                WidgetbookUseCase(
                  name: 'Text Input',
                  builder: (context) => Padding(
                    padding: context.horizontalPaddingNormal,
                    child: BaseFormInput(
                      label: 'label',
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: AppThemeLight.instance.theme,
        ), // dummy theme
        WidgetbookTheme(
          name: 'Dark',
          data: AppThemeDark.instance.darkTheme,
        ),
      ],
      appInfo: AppInfo(name: 'Lefine App'),
    );
  }
}
