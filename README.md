# Flutter Starter

Production-ready template for building cross-platform mobile applications with Flutter, Dart, Riverpod v2, Dio HTTP Client, and Reactive Forms.

## 🎯 Overview

**Flutter Starter** is a comprehensive mobile app template that implements modern architecture and best practices:
- **Framework**: Flutter with Dart for cross-platform development (iOS, Android, Web, macOS)
- **State Management**: Riverpod v2 for reactive and efficient state management
- **HTTP Client**: Dio for robust and interceptor-based API communication
- **Forms**: Reactive Forms for reactive form handling with validation
- **Preview**: Device Preview built-in for testing across multiple screen sizes
- **Analysis**: Comprehensive linting and code analysis tools

Use this starter for:
- Cross-platform mobile applications
- Rapid prototyping and MVP development
- Teams wanting Flutter best practices built-in

---

## 📚 Tech Stack

| Concern | Package |
|---------|---------|
| Framework | Flutter (stable) |
| Language | Dart >=3.0.0 |
| State Management | flutter_riverpod ^2.5.1 |
| HTTP Client | dio ^5.4.0 |
| Forms | reactive_forms ^17.0.0 |
| Device Preview | device_preview ^1.1.0 |
| Version Manager | FVM (Flutter Version Management) |

---

## 📋 Prerequisites

- **Flutter**: Latest stable version (via FVM recommended)
- **Dart**: >=3.0.0
- **FVM**: [Install FVM](https://fvm.app/documentation/getting-started/installation)
- **Xcode**: v14+ (for iOS development)
- **Android Studio**: Latest (for Android development)

---

## 🚀 Quick Start

### 1. Clone Repository

```bash
git clone <repository-url>
cd flutter-starter
```

### 2. Install & Configure Flutter (via FVM)

Recommended approach using FVM for version management:

```bash
fvm install
fvm use stable
```

Without FVM, ensure Flutter stable version is installed:

```bash
flutter --version
```

### 3. Install Dependencies

With FVM:

```bash
fvm flutter pub get
```

Without FVM:

```bash
flutter pub get
```

### 4. Set Environment Variable

The application uses `API_BASE_URL` for all HTTP requests.

Run with the `--dart-define` flag:

```bash
flutter run --dart-define=API_BASE_URL=https://api.example.com
```

**Note**: Without this flag, all API requests will fail due to empty `API_BASE_URL`.

### 5. Run Application

#### Web (with Device Preview)

```bash
flutter run -d chrome --dart-define=API_BASE_URL=https://api.example.com
```

#### macOS

```bash
flutter run -d macos --dart-define=API_BASE_URL=https://api.example.com
```

#### Android (emulator or device)

```bash
flutter run -d android --dart-define=API_BASE_URL=https://api.example.com
```

#### iOS (simulator or device)

```bash
flutter run -d ios --dart-define=API_BASE_URL=https://api.example.com
```

---

## 📁 Project Structure

```
lib/
├── features/
│   └── {featureName}/
│       ├── types/         # Data models & state shape
│       ├── states/        # Riverpod Notifier (client state)
│       ├── services/      # HTTP calls via DioClient
│       ├── controllers/   # AsyncNotifier (async logic)
│       └── widgets/       # UI layer (screens & components)
├── shared/
│   ├── services/         # Shared services (DioClient, etc)
│   ├── widgets/          # Reusable UI widgets
│   ├── utils/            # Helper functions
│   └── constants/        # App constants
└── main.dart             # App entry point
```

---

## 💻 Available Scripts

| Command | Description |
|---------|-------------|
| `flutter pub get` | Install dependencies |
| `flutter run` | Run app (device preview) |
| `flutter test` | Run unit & widget tests |
| `dart analyze --fatal-infos` | Static analysis |
| `dart format --set-exit-if-changed .` | Code formatting |
| `flutter build web` | Build for web |
| `flutter build ios` | Build for iOS |
| `flutter build android` | Build for Android |

---

## 🎨 Device Preview

The application includes [device_preview](https://pub.dev/packages/device_preview) package for multi-device testing.

When running in non-release mode, a preview panel automatically appears — select different devices from the dropdown to see how your app looks across various screen sizes.

**Note**: Device Preview is automatically disabled for release builds.

---

## 🧪 Testing

### Run Unit & Widget Tests

```bash
flutter test
```

### Code Analysis & Formatting

```bash
# Static analysis
dart analyze --fatal-infos

# Format code
dart format --set-exit-if-changed .
```

---

## 🏗️ Architecture Guide

Complete documentation for architecture, naming conventions, and best practices is available in [CODE.md](./CODE.md).

**Key Topics:**
- Naming conventions (functions, files, folders)
- Layer structure (Types, States, Services, Controllers, Widgets)
- Riverpod provider patterns
- Dio HTTP client usage
- Reactive Forms implementation
- Widget composition best practices
- State management patterns

---

## 🤝 Contributing

1. Fork this repository
2. Create a feature branch: `git checkout -b feature/your-feature-name`
3. Commit your changes: `git commit -m 'feat: add your feature'`
4. Push to the branch: `git push origin feature/your-feature-name`
5. Open a Pull Request

---

## 📄 License

MIT License - see [LICENSE](./LICENSE) file for details.

---

Developed by Dzikri Alan's Team
