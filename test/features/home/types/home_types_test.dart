import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/features/home/types/home_types.dart';

void main() {
  group('HomeState', () {
    test('default status is loading', () {
      const homeState = HomeState();
      expect(homeState.status, 'loading');
    });

    test('copyWith updates status', () {
      const homeState = HomeState();
      final updated = homeState.copyWith(status: 'success');
      expect(updated.status, 'success');
    });

    test('equality is based on status', () {
      const a = HomeState(status: 'success');
      const b = HomeState(status: 'success');
      expect(a, equals(b));
    });

    test('hashCode is based on status', () {
      const a = HomeState(status: 'success');
      const b = HomeState(status: 'success');
      expect(a.hashCode, equals(b.hashCode));
    });
  });
}
