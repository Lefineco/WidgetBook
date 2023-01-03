import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../init/notifier/provider_list.dart';

class BaseToggleSwitch extends ConsumerStatefulWidget {
  const BaseToggleSwitch({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BaseToggleSwitchState();
}

class _BaseToggleSwitchState extends ConsumerState<BaseToggleSwitch> {
  void toggleTheme(
    WidgetRef ref,
  ) {
    ref.read(themeNotifierProvider.notifier).toggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoSwitch(
        value: ref.watch(themeNotifierProvider.notifier).mode == ThemeMode.light,
        onChanged: (bool? val) => toggleTheme(
          ref,
        ),
      ),
    );
  }
}
