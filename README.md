# BodyForm — 3D Character / Model Viewer

A lightweight Flutter app that displays 3D GLB/GLTF character models using the
`model_viewer_plus` package. The app provides a swipeable gallery of models,
camera controls, and automatic rotation for quick previews.

This repository is a small showcase and starting point for embedding 3D
web-based model viewers inside Flutter apps (mobile, web, desktop).

---

## Key features

- Swipe between multiple 3D models (PageView)
- Per-model camera controls (zoom, orbit) provided by the underlying
	`model-viewer` web component
- Auto-rotate and autoplay for quick model previews
- Easy to add more GLB/GLTF models via the `assets/models/` folder

## Technology stack

- Flutter (Dart)
- model_viewer_plus (wraps the web `model-viewer` component)
- Asset-based GLB/GLTF models stored under `assets/models/`

## Preview

Add screenshot(s) or a short GIF in this section to showcase the app.

![screenshot-placeholder](assets/screenshot.png)

---

## Getting started (development)

Prerequisites

- Flutter SDK (compatible with Dart SDK specified in `pubspec.yaml`; this
	project targets `sdk: ^3.9.2`).
- A connected device or emulator, or a browser for web builds.

Clone and run

```powershell
# clone the repo (replace URL if needed)
git clone https://github.com/ZyadWKhedr/3d-model-viewer-app.git
cd "3d-model-view-app/body_form_app" # or the repo root where this project lives

# fetch dependencies
flutter pub get

# run on the default device (or add -d windows/chrome/android)
flutter run
```

Build for release

```powershell
# Android APK
flutter build apk

# Web
flutter build web

# Windows (desktop)
flutter build windows
```

Notes

- `model_viewer_plus` depends on embedding a web-based `model-viewer`.
	Behavior/appearance may vary slightly by target platform (mobile/web/desktop).
- Make sure your `.glb`/.gltf assets are optimized for size and vertices to
	keep performance smooth on mobile devices.

## How to add or replace models

1. Put your `.glb` or `.gltf` files in `assets/models/`.
2. Confirm the path is included in `pubspec.yaml` under `flutter.assets`.
3. Update the `characters` list in `lib/body_viewer_page.dart` with the
	 display name and `src` asset path. Example:

```dart
{
	'name': 'My Model',
	'src': 'assets/models/my_model.glb',
}
```

## Project structure (important files)

- `lib/main.dart` — App entry point and theme configuration.
- `lib/body_viewer_page.dart` — The page that implements the 3D viewer gallery.
- `assets/models/` — GLB/GLTF model assets used by the app.
- `pubspec.yaml` — Dependencies and asset declarations (note: contains
	`model_viewer_plus` dependency).

## Customization ideas

- Enable AR support by toggling the `ar` flag in the `ModelViewer` widget
	(platform support varies).
- Add model-specific metadata (author, polycount) and a details page.
- Add remote model loading (from a CDN) with caching for larger catalogs.

## Contributing

Contributions are welcome. A suggested minimal workflow:

1. Fork the repository.
2. Create a feature branch (feature/name).
3. Commit changes with clear messages.
4. Submit a pull request describing the change and why it's useful.

Please include small, focused PRs and add tests if you modify logic.

## License

Include a `LICENSE` file in the repo to clearly define usage terms. If you
don't have a preference, the MIT license is a good default for open-source
projects.

---

If you'd like, I can also:

- add a small CONTRIBUTING.md with PR and code style guidelines
- add an example screenshot or GIF to the repo
- add CI checks (format/lints) to the repo for PR validation

If you want any of those, tell me which and I'll add them next.
