<div align="center">

# 🧭 Custom Navigation in SwiftUI

**A state-driven navigation flow — Splash → Onboarding → Home — without `NavigationStack`.**

![Platform](https://img.shields.io/badge/Platform-iOS-black?style=flat-square&logo=apple)
![Swift](https://img.shields.io/badge/Swift-5.0-orange?style=flat-square&logo=swift)
![SwiftUI](https://img.shields.io/badge/SwiftUI-blue?style=flat-square&logo=swift)
![Xcode](https://img.shields.io/badge/Xcode-16-147EFB?style=flat-square&logo=xcode)
![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/CustomNavigationsSwiftUI?style=flat-square&color=6E48AA)
![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/CustomNavigationsSwiftUI?style=flat-square&color=4776E6)

</div>

## 📖 Overview

CustomNavigationsSwiftUI demonstrates how to drive an app's top-level flow with a simple state machine instead of relying on `NavigationStack` or `TabView`. A single `RootNavigations` view owns an `AppState` enum (`splash`, `onboarding`, `home`) and swaps the visible screen with animated transitions as the state changes. The onboarding gate is persisted with `@AppStorage`, so returning users skip straight from the splash screen to the home screen.

## ✨ Features

- 🔀 Enum-based `AppState` (`splash` / `onboarding` / `home`) that decides which screen is shown.
- ⏱️ Timed splash screen that auto-advances after a short delay before routing the user.
- 💾 Persistent onboarding gate using `@AppStorage("isOnboardingDone")` so it only runs once.
- 🎬 Animated screen swaps driven by `withAnimation` on state changes.
- 🧩 `onFinish` callback from onboarding cleanly hands control back to the root navigator.
- 🍃 Pure SwiftUI, no external dependencies.

## 📸 Preview

<div align="center">
  <img width="1728" height="818" alt="Custom navigation flow overview" src="https://github.com/user-attachments/assets/d0797d4e-1920-42b0-91f6-2382e58e8198" />
  <img width="670" height="324" alt="App state routing" src="https://github.com/user-attachments/assets/fa0d673e-e71e-427f-aeca-1e44bde23ffe" />
  <img width="711" height="343" alt="Onboarding gate" src="https://github.com/user-attachments/assets/bd1b3c3f-e20f-40c7-a24e-1a8a11dd6b60" />
</div>

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/CustomNavigationsSwiftUI.git
cd CustomNavigationsSwiftUI
open CustomNavigationsSwiftUI.xcodeproj
```

Then select a simulator and press `Command-R` to build and run.

## 📋 Requirements

- iOS 26.1+
- Xcode 16 or later
- Swift 5.0

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
