import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kartal/kartal.dart';
import 'package:lefine_theme/theme/app_theme_dark.dart';
import 'package:lefine_theme/theme/app_theme_light.dart';
import 'package:uikit/uikit.dart';
import 'package:widgetbook/widgetbook.dart';

import 'core/init/notifier/provider_list.dart';
import 'core/mixin/button_loader_mixin.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> with ButtonLoader {
  bool _enable = false;

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
