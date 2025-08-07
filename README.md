<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

# KenLogger

KenLogger is a simple and colorful console logger for Dart and Flutter CLI apps.

## Features

- ✅ Log types: `error`, `info`, `success`, `warning`
- 🎨 Colored output in supported terminals
- 📦 Easy to use static methods

## Installation

```bash
dart pub add ken_logger
```

## Usage

Import the package and use its static logging methods:

```dart
import 'package:ken_logger/ken_logger.dart';

void main() {
  KenLogger.success('Success example');
  KenLogger.info('Info example');
  KenLogger.warning('Warning example');
  KenLogger.error('Error example');
}

```

## Additional Information

For more details about KenLogger, including usage instructions and updates, please visit the [GitHub repository](https://github.com/TonyLapuken/ken_logger).

### Contributing

Contributions are welcome! If you'd like to improve the package, please fork the repository, make your changes, and submit a pull request. For major changes, please open an issue first to discuss what you would like to change.

### Reporting Issues

If you encounter any bugs or have feature requests, please file an issue on the [GitHub Issues page](https://github.com/TonyLapuken/ken_logger/issues). Provide as much detail as possible to help us address the problem promptly.

### Support and Response

We strive to respond to issues and pull requests in a timely manner. While this package is maintained voluntarily, we appreciate your patience and community involvement.

Thank you for using KenLogger!
