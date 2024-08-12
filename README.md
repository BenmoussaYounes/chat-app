# <div align="center">Chat App 📨</div>

![ChatApp Logo](https://github.com/user-attachments/assets/c0047c6e-3362-4680-8ba9-2f5dc0a44523)

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Technical Details](#technical_details)
- [Installation](#installation)
- [Design decisions](#design_decisions)
- [Challenges](#challenges)

## 📱 Overview

ChatApp is a Flutter-based mobile application that allows two different users (in our case, Younes and Ali for simplicity) to create chat rooms and start chatting in them. The app includes real-time updates and many other features. Watch a demo of the app to see it in action.

## 🪄 Features

- **Real-Time Messaging:** Enjoy seamless communication between users with bidirectional messaging, powered by Firebase Firestore for real-time data synchronization.

- **Unread Message Counter:** Stay informed with a built-in counter that displays the number of unread messages for each chat, ensuring you never miss an important update.

- **Message History and Status:** Access a comprehensive history of all conversations, with clear indicators for seen and unseen messages, enhancing user interaction and engagement.

- **Dynamic Conversation Creation:** Effortlessly create new conversation rooms with the intuitive floating action button, allowing for limitless chat interactions and collaboration.

- **Responsive Design:** Experience a fully responsive app that maintains smooth operation and an optimal layout, even when you rotate the screen.

- **Robust Error Handling:** Benefit from comprehensive error handling mechanisms, including error snackbar messages, an error screen, and the ability to refresh the page, ensuring a stable and reliable user experience.

- **Optimized Performance:** Enjoy a high-performance app that is optimized for speed and efficiency, providing a smooth and responsive user experience at all times.

## 📋 Technical Details

### Technology Stack for Mobile Application

- **Dart**: The programming language used for developing the app, known for its performance and suitability for client-side development.
- **Flutter**: The UI toolkit used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter allows for expressive and flexible UI design with fast development cycles.

<br/>

### Dependencies

```yaml
# ! After each change related to a generated file run  dart run build_runner build --delete-conflicting-outputs
dependencies:
  flutter:
    sdk: flutter

  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.6
  # A Flutter package to use fonts from fonts.google.com.
  google_fonts: ^6.2.1
  # A package for creating badges. Badges can be used for an additional marker for any widget, e.g. show a number of items in a shopping cart.
  badges: ^3.1.2
  # Easy way to add shimmer effect
  shimmer: ^3.0.0
  # State management
  flutter_bloc: ^8.1.6
  # To specify how we handle bloc events
  bloc_concurrency: ^0.2.5
  # Code generator (mainly used with cubit & retrofit)
  freezed: ^2.4.5
  freezed_annotation: ^2.4.4
  # Contains code to deal with internationalized/localized messages, date and number formatting and parsing, bi-directional text, and other internationalization issues.
  intl: ^0.19.0
  # For dependency injection
  get_it: ^7.7.0
  # Classes and helper functions that support JSON code generation via the `json_serializable` package.
  json_annotation: ^4.9.0
  # for adapting screen and font size.
  flutter_screenutil: ^5.9.3
  # Flutter plugin for Firebase Core, enabling connecting to multiple Firebase apps
  firebase_core: 2.31.1
  # Flutter plugin for Cloud Firestore, a cloud-hosted, noSQL database with live synchronization and offline support on Android and iOS.
  cloud_firestore: 4.17.4

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0
  # A build system for Dart code generation and modular compilation
  build_runner: ^2.4.11
  # Automatically generate code for converting to and from JSON by annotating Dart classes
  json_serializable: ^6.8.0
```

<br/>

## 🛠 Installation

To get a local copy up and running, follow these steps:

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK (included with Flutter)
- A code editor (VS Code, Android Studio, etc.)

### Clone the Repository

```bash
git clone https://github.com/your-username/ChatApp.git
cd ChatApp
```

### Install dependencies

Run the following command in the project directory to install all necessary dependencies

```bash
git clone https://github.com/your-username/ChatApp.git
cd mobile_app
```

### Set up Firebase ( Optional)

Case you want to run the app with your own firestore database you can do the following setup
( for a more details information, [link of the official documentation by firebase](https://firebase.google.com/docs/flutter/setup?platform=ios)

1. Create a Firebase project in the Firebase Console.

2. [install command line tools](https://firebase.google.com/docs/cli#setup_update_cli) ( to make installation easier we will use firebase cli tool)
3. Log into Firebase using your Google account by running the following command:

```bash
firebase login
```

5. Install the FlutterFire CLI by running the following command from any directory:

```bash
dart pub global activate flutterfire_cli
```

6. Configure your apps to use Firebase

```bash
flutterfire configure
```

### Run the app 🚀

```bash
flutter pub get
fluter run
```

## 📏 Design Decisions

- My design decisions are guided by a principle I strongly believe in: making things as simple as possible. I aim to write the least amount of code needed to implement features and avoid over-engineering. However, there is a challenge in ensuring that the code remains clean and maintainable while avoiding unnecessary complexity (I strive to walk a fine line between spaghetti code and over-engineering 😅). If a feature can be implemented in three lines of code, I will do so unless there is a growing business need that requires the feature to be designed with future extensions in mind ( less code less bugs ).

- The project architecture is inspired by Clean Architecture. It is a customized version that adheres to the principle of separation of concerns by ensuring each feature is organized in its own folder. However, not all layers are used, particularly the domain layer. I also tailor the use of abstractions based on feature needs, adding more layers and using abstractions as required, following the principle of simplicity mentioned earlier.

- Each feature is organized according to this structure. However, additional layers may be added depending on the specific needs of the feature.

<div align="center">
  <img src="https://github.com/user-attachments/assets/cc4a58f3-1b59-42fd-807b-b4fefa5efc70" height="250">
</div>

## 💫 Challenges

- **Package Version Conflicts**: I encountered conflicts between package versions that prevented me from using all packages at their latest versions, such as `freezed`. I had to carefully select compatible versions to ensure all packages worked together seamlessly.

- **Firebase Project Configuration**: While auto-configuring the app in the Firebase project, I faced an issue with the package ID. The ID `com.attraxia.chat_app` was valid for Android but not a valid bundle ID for iOS, which caused configuration problems 😅.

- **Firestore Offline Data Handling**: I initially struggled with handling app no interenet connection case. I was manually managing offline case using the Flutter Connectivity package before realizing that Firestore automatically handles offline data persistence.

- **Firebase CLI Setup Issues**: Despite the Firebase CLI auto-generating configurations, I encountered unexpected behavior during the setup process. This resulted in installation issues and required troubleshooting to resolve.
