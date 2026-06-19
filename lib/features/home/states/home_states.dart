import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter/features/home/types/home_types.dart';

class HomeNotifier extends Notifier<HomeState> {
  @override
  HomeState build() => const HomeState(status: 'success');

  void setHome({String? status}) {
    state = state.copyWith(status: status);
  }
}

final homeProvider = NotifierProvider<HomeNotifier, HomeState>(
  HomeNotifier.new,
);
