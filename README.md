# Flutter Starter

Template arsitektur Flutter siap pakai dengan Riverpod v2, Dio, dan Reactive Forms.

## Prasyarat

| Tool | Versi |
|------|-------|
| Flutter | `stable` (via FVM) |
| Dart | `>=3.0.0` |
| FVM | [Install FVM](https://fvm.app/documentation/getting-started/installation) |

## Cara Clone & Run

### 1. Clone repository

```bash
git clone <url-repository>
cd flutter-starter
```

### 2. Install Flutter versi yang benar (via FVM)

```bash
fvm install
fvm use stable
```

> Tanpa FVM, pastikan Flutter versi `stable` sudah terinstall dan ada di PATH.

### 3. Install dependencies

```bash
flutter pub get
```

atau jika menggunakan FVM:

```bash
fvm flutter pub get
```

### 4. Set environment variable

Project ini menggunakan `API_BASE_URL` sebagai base URL untuk semua HTTP request.

Jalankan dengan flag `--dart-define`:

```bash
flutter run --dart-define=API_BASE_URL=https://api.example.com
```

> Tanpa flag ini, `API_BASE_URL` akan kosong dan semua request API akan gagal.

### 5. Jalankan aplikasi

```bash
# Web (dengan device preview)
flutter run -d chrome --dart-define=API_BASE_URL=https://api.example.com

# macOS
flutter run -d macos --dart-define=API_BASE_URL=https://api.example.com

# Android (emulator/device)
flutter run -d android --dart-define=API_BASE_URL=https://api.example.com

# iOS (simulator/device)
flutter run -d ios --dart-define=API_BASE_URL=https://api.example.com
```

## Device Preview

Project ini sudah dilengkapi [device_preview](https://pub.dev/packages/device_preview). Saat menjalankan di mode non-release, panel preview otomatis muncul — pilih device dari dropdown untuk melihat tampilan di berbagai ukuran layar.

Device Preview **otomatis dinonaktifkan** saat build release.

## Menjalankan Tests

```bash
flutter test
```

## Analisis Kode

```bash
dart analyze --fatal-infos
dart format --set-exit-if-changed .
```

## Arsitektur

Lihat [CLAUDE.md](CLAUDE.md) untuk dokumentasi lengkap arsitektur, konvensi penamaan, dan aturan per layer.

```
lib/features/{nama_fitur}/
├── types/        # Data models & state shape
├── states/       # Riverpod Notifier (client state)
├── services/     # HTTP calls via DioClient
├── controllers/  # AsyncNotifier (async logic)
└── widgets/      # UI layer
```

## Tech Stack

| Concern | Package |
|---------|---------|
| State Management | `flutter_riverpod ^2.5.1` |
| HTTP Client | `dio ^5.4.0` |
| Forms | `reactive_forms ^17.0.0` |
| Dev Preview | `device_preview ^1.1.0` |
