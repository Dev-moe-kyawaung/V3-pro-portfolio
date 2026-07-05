# Flutter Portfolio Starter

A premium, ultra-modern Flutter portfolio starter built with a clean feature-first architecture, smooth animations, responsive layouts, and reusable UI components.

[![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white)](https://dart.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

---

## Overview

This project is designed as a production-ready portfolio template for developers who want a polished, premium-looking personal site or app.

It includes:
- Animated hero section.
- Responsive sticky navigation.
- About, skills, services, projects, apps, and contact sections.
- Clean JSON-driven content structure.
- Reusable widgets and a scalable folder layout.

---

## Features

- Feature-first folder architecture.
- Responsive layout for mobile, tablet, desktop, and web.
- Premium hero animations with rotating avatar ring and typing text.
- Sticky navbar with smooth section scrolling.
- Animated skill bars and reveal effects.
- Portfolio sections for services, projects, apps, and contact.
- JSON-based content management.
- Reusable theme, widgets, helpers, and services.
- `go_router` based app routing.
- `provider` + `ChangeNotifier` state management.

---

## Tech Stack

- Flutter
- Dart
- Provider
- GoRouter
- url_launcher
- json_serializable
- build_runner
- flutter_animate
- animated_text_kit
- visibility_detector

---

## Folder Structure

```txt
flutter_portfolio_starter/
├── pubspec.yaml
├── assets/
│   ├── images/
│   └── data/
│       ├── profile.json
│       ├── projects.json
│       ├── services.json
│       ├── social_links.json
│       └── apps.json
└── lib/
    ├── main.dart
    ├── app/
    │   ├── app.dart
    │   ├── router/
    │   ├── theme/
    │   └── di/
    ├── core/
    │   ├── constants/
    │   ├── helpers/
    │   ├── services/
    │   ├── utils/
    │   └── widgets/
    ├── data/
    │   ├── models/
    │   ├── repositories/
    │   ├── sources/
    │   └── state/
    └── features/
        ├── shell/
        ├── hero/
        ├── about/
        ├── skills/
        ├── services/
        ├── projects/
        ├── apps/
        └── contact/
