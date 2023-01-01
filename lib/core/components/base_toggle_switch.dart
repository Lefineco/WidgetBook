import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../init/notifier/provider_list.dart';

class BaseToggleSwitch extends ConsumerWidget {
  const BaseToggleSwitch({super.key});

  void toggleTheme(WidgetRef ref) {
    ref.read(themeNotifierProvider.notifier).toggleTheme();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
        child: CupertinoSwitch(
      value: ref.watch(themeNotifierProvider.notifier).mode == ThemeMode.dark,
      onChanged: (val) => toggleTheme(ref),
    ));
  }
}

enum ThemeMode { light, dark }
