# Ocean Journal (Flutter)

A personal journal app for mobile and web with a clean Ocean Professional theme. Create, view, edit, search, and organize entries with local persistence (no external APIs).

## Features
- Create, view, edit, and delete journal entries
- Required title, multiline content, optional tags (comma-separated), auto-filled date
- Search by text and filter by tag chips
- Local persistence via shared_preferences (survives hot reload and restarts)
- Seed/demo data on first run
- Responsive layout (mobile & web), adaptive max content width on large screens
- Ocean Professional theme: blue primary (#2563EB), amber accent (#F59E0B), error (#EF4444), background (#F9FAFB), surface (#FFFFFF), text (#111827), subtle gradient, rounded corners, shadows, smooth transitions

## Project structure
- `lib/models/` data models (`JournalEntry`)
- `lib/services/` storage and persistence (`StorageService`)
- `lib/state/` app state with ChangeNotifier (`JournalState`)
- `lib/widgets/` reusable UI (entry card, search/filter bar, entry form)
- `lib/screens/` feature screens (`HomeScreen`)
- `lib/theme.dart` Ocean theme

## Running locally

Prerequisites:
- Flutter SDK is preinstalled in this environment
- Android SDK/Chrome are available for mobile/web respectively

Install dependencies:
```
flutter pub get
```

Run on web (served typically on port 3000 in preview systems):
```
flutter run -d chrome --web-port 3000
```

Run on Android emulator/device:
```
flutter run -d android
```

If multiple devices are available, list them with:
```
flutter devices
```

Build for web:
```
flutter build web
```

## Notes
- No environment variables are required. The .env entry in pubspec is unused and safe.
- Data is stored using `shared_preferences` (web: localStorage; mobile: platform-specific store).
- On first run, seed data is created to demonstrate the UI and features.

## Testing
You can run basic widget tests (if any present) with:
```
flutter test
```

## License
MIT
