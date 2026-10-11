import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/features/updates/app_version.dart';
import 'package:reszveny/features/updates/update_service.dart';

void main() {
  test('version parsing and ordering', () {
    expect(AppVersion.tryParse('1.2.3+45')!.toString(), '1.2.3+45');
    expect(AppVersion.tryParse('v0.6.0')! > AppVersion.tryParse('0.5.9')!, isTrue);
    expect(AppVersion.tryParse('1.0.0+2')! > AppVersion.tryParse('1.0.0+1')!, isTrue);
    expect(AppVersion.tryParse('1.0')! > AppVersion.tryParse('1.0.0')!, isFalse);
    expect(AppVersion.tryParse('1.0.1')! > AppVersion.tryParse('1.0')!, isTrue);
    expect(AppVersion.tryParse(''), isNull);
    expect(AppVersion.tryParse('abc'), isNull);
  });

  test('manifest picks the platform url with a generic fallback', () {
    final m = UpdateService.parseManifest({
      'version': '0.7.0+8',
      'notes': 'Bug fixes',
      'url': 'https://example.com/all',
      'urls': {'macos': 'https://example.com/mac.zip'},
    }, 'macos');
    expect(m.version, '0.7.0+8');
    expect(m.url, 'https://example.com/mac.zip');
    expect(UpdateService.parseManifest({'version': '1', 'url': 'https://x'}, 'ios').url, 'https://x');
  });
}
