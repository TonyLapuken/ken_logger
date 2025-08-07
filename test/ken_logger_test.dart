import 'package:flutter_test/flutter_test.dart';
import 'package:ken_logger/ken_logger.dart';

void main() {
  test('KenLogger.info() does not throw', () {
    expect(() => KenLogger.info('info message'), returnsNormally);
  });

  test('KenLogger.error() does not throw', () {
    expect(() => KenLogger.error('error message'), returnsNormally);
  });

  test('KenLogger.success() does not throw', () {
    expect(() => KenLogger.success('success message'), returnsNormally);
  });

  test('KenLogger.warning() does not throw', () {
    expect(() => KenLogger.warning('warning message'), returnsNormally);
  });
}


