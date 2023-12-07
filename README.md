# Flutter app development Guidelines

## Official Documentation

* https://flutter.dev/docs
* https://dart.dev/guides
* https://pub.dev/

## Tutorials

### Articles

* https://flutter.dev/docs/get-started/codelab
* https://flutter.dev/docs/cookbook
* https://flutter.dev/docs/development/ui/layout/tutorial

### Videos

* https://www.youtube.com/watch?v=GLSG_Wh_YWc
* https://www.youtube.com/watch?v=1gDhl4leEzA

### Advanced Topics

1. [State management](https://flutter.dev/docs/development/data-and-backend/state-mgmt/options)
2. [Json handling](https://flutter.dev/docs/development/data-and-backend/json)
3. [Http requests](https://flutter.dev/docs/cookbook/networking/fetch-data)
4. [Navigation](https://flutter.dev/docs/cookbook/navigation/navigation-basics)
5. [Navigation 2.0](https://flutter.dev/docs/development/ui/navigation)
6. [Native integration](https://flutter.dev/docs/development/platform-integration/platform-channels)
7. [Module and plugin development](https://flutter.dev/docs/development/packages-and-plugins/developing-packages)

## Guidelines

### Code Style
[Effective Dart](https://dart.dev/guides/language/effective-dart)

### Performance & Optimization
[Flutter Performance](https://flutter.dev/docs/perf/rendering/best-practices)

---

## Clean Architecture
> A list of awesome Clean Architecture articles, videos, books, libraries, tools, etc.

1. https://resocoder.com/2019/08/27/flutter-tdd-clean-architecture-course-1-explanation-project-structure/
2. https://medium.com/@samra.sajjad0001/flutter-clean-architecture-5de5e9b8d093
3. https://bespoyasov.me/blog/clean-architecture-on-frontend/

---

## State Management
> A list of awesome Flutter state management libraries, tools, etc.

### Provider

ref: https://pub.dev/packages/provider
> desc: A mixture between dependency injection (DI) and state management, built with widgets for widgets.

### Riverpod

ref: https://riverpod.dev/
> desc: Riverpod is a provider, but different. It is a complete rewrite of provider to make improvements to the overall
> design, and solve some common issues that users have been experiencing.

### Flutter Bloc

ref: https://bloclibrary.dev/#/gettingstarted
> desc: A predictable state management library that helps implement the BLoC (Business Logic Component) design pattern.

### GetX

ref: https://pub.dev/packages/get
> desc: GetX is an extra-light and powerful solution for Flutter. It combines high performance state management,
> intelligent dependency injection, and route management quickly and practically.

## Navigation

### Go Router
ref: https://pub.dev/packages/go_router
> desc: A declarative, performant, and extensible router for Flutter that supports dynamic route transitions.

tutorial: https://pub.dev/documentation/go_router/latest/index.html

---

# Popular Packages
> A curated list of awesome Flutter packages.

## Http Client

### Http
ref: https://pub.dev/packages/http
> desc: A composable, Future-based library for making HTTP requests.

### Dio
ref: https://pub.dev/packages/dio
> desc: A powerful Http client for Dart, which supports Interceptors, FormData, Request Cancellation, File Downloading, Timeout etc.

---

## Local Storage

### Sqlite
ref: https://pub.dev/packages/sqflite
> desc: SQLite plugin for Flutter. Supports both iOS and Android.

### Shared Preferences
ref: https://pub.dev/packages/shared_preferences
> desc: Wraps platform-specific persistent storage for simple data (NSUserDefaults on iOS and macOS, SharedPreferences on Android, etc.).

### Hive
ref: https://pub.dev/packages/hive
> desc: Hive is a lightweight and blazing fast key-value database written in pure Dart. Inspired by Bitcask.

---

## Local Information

### Package Info Plus
ref: https://pub.dev/packages/package_info_plus
> desc: Flutter plugin for querying information about the application package, such as CFBundleVersion on iOS or versionCode on Android.

### Device Info Plus
ref: https://pub.dev/packages/device_info_plus
> desc: Flutter plugin providing detailed information about the device (make, model, etc.), and Android or iOS version the app is running on.

### Connectivity Plus
ref: https://pub.dev/packages/connectivity_plus
> desc: Flutter plugin for discovering the state of the network (WiFi & mobile/cellular) connectivity on Android and iOS.

### Permission Handler
ref: https://pub.dev/packages/permission_handler
> desc: A permissions plugin for Flutter. This plugin provides a cross-platform (iOS, Android) API to request and check permissions.

### Share Plus
ref: https://pub.dev/packages/share_plus
> desc: Flutter plugin for sharing content via the platform share UI, using the ACTION_SEND intent on Android and UIActivityViewController on iOS.

---

## Animation

### Animation
ref: https://pub.dev/packages/animations
> desc: A collection of high-performance, low-level flutter animation primitives such as `AnimatedValue` and `AnimationController`.

### Animated Text Kit
ref: https://pub.dev/packages/animated_text_kit
> desc: A flutter package which contains a collection of some cool and awesome text animations.

### Shimmer
ref: https://pub.dev/packages/shimmer
> desc: Shimmer effect in Flutter.

### Lottie
ref: https://pub.dev/packages/lottie
> desc: Lottie is a mobile library for Android and iOS that parses Adobe After Effects animations exported as json with Bodymovin and renders them natively on mobile!

---

## Others

### Equatable
ref: https://pub.dev/packages/equatable
> desc: A Dart package that helps to implement value based equality without needing to explicitly override == and hashCode.

### collection
ref: https://pub.dev/packages/collection
> desc: Utility functions and classes related to the 'dart:collection' library.

### json annotation
ref: https://pub.dev/packages/json_annotation
> desc: Classes and helper functions that support JSON code generation via the `json_serializable` package.

### Lint rules
ref: https://dart.dev/tools/linter-rules
> desc: The Dart linter is a static analyzer that identifies potential problems with your Dart code, including style.

### intl
ref: https://pub.dev/packages/intl
> desc: Contains code to deal with internationalized/localized messages, date and number formatting and parsing, bi-directional text, and other internationalization issues.

### Url Launcher
ref: https://pub.dev/packages/url_launcher
> desc: Plugin for launching a URL. Supports web, phone, SMS, and email schemes.

### Image Picker
ref: https://pub.dev/packages/image_picker
> desc: Flutter plugin for selecting images from the Android and iOS image library, and taking new pictures with the camera.

### Webview Flutter
ref: https://pub.dev/packages/webview_flutter
> desc: A Flutter plugin that provides a WebView widget.

### Logger
ref: https://pub.dev/packages/logger
> desc: Simple, pretty and powerful logger for flutter.

### fl charts
ref: https://pub.dev/packages/fl_chart
> desc: A powerful Flutter chart library, currently supporting Line Chart, Bar Chart, Pie Chart, Scatter Chart and Radar Chart.

---

## Firebase

### Firebase Core
ref: https://pub.dev/packages/firebase_core
> desc: Flutter plugin for Firebase Core, enabling connecting to multiple Firebase apps.

### Firebase Crashlytics
ref: https://pub.dev/packages/firebase_crashlytics
> desc: Flutter plugin for Firebase Crashlytics. It reports uncaught errors to the Firebase console.

### Firebase Analytics
ref: https://pub.dev/packages/firebase_analytics
> desc: Flutter plugin for Google Analytics for Firebase, an app measurement solution that provides insight on app usage and user engagement on Android and iOS.

### Firebase Messaging
ref: https://pub.dev/packages/firebase_messaging
> desc: Flutter plugin for Firebase Cloud Messaging, a cross-platform messaging solution that lets you reliably deliver messages on Android and iOS.

---

## Google

### Google Maps Flutter
ref: https://pub.dev/packages/google_maps_flutter
> desc: A Flutter plugin for integrating Google Maps in iOS and Android applications.

### Google Fonts
ref: https://pub.dev/packages/google_fonts
> desc: A package to include fonts from fonts.google.com in your Flutter app.






