import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ljj_tabbar_selector/ljj_tabbar_selector.dart';

void main() {
  const MethodChannel channel = MethodChannel('ljj_tabbar_selector');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await LjjTabbarSelector.platformVersion, '42');
  });
}
