// a riverpod provider to notify polllistview to refresh

import 'package:flutter_riverpod/flutter_riverpod.dart';

class RefreshProvider extends StateNotifier<bool> {
  RefreshProvider() : super(false);

  void refresh() {
    state = !state;
  }
}

final refreshProvider = StateNotifierProvider<RefreshProvider, bool>((ref) {
  return RefreshProvider();
});