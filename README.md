# 🎮 Game Ledger

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![SQLite](https://img.shields.io/badge/sqlite-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white)
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)

> **Track your backlog. Calculate your ROI. Play smart.**

**Game Ledger** is a modern, cross-platform application designed to manage your video game library. Beyond just a list, it helps you understand your gaming habits by calculating the **Cost Per Hour (CPH)** for each game and providing real-time statistics about your collection's value and your time investment.

---

## 📸 Screenshots

| Dashboard | Statistics | Add Game |
|:---------:|:----------:|:--------:|
| *(Add dashboard.png here)* | *(Add stats.png here)* | *(Add form.png here)* |

---

## ✨ Key Features

* **📚 Library Management:** Organize your games by status (Backlog, Playing, Completed, Dropped).
* **💰 ROI Calculation:** Automatically calculates the *Cost Per Hour* (CPH) for every game. Know exactly which games were worth the price.
* **📊 Real-time Statistics:**
    * Total collection value.
    * Total life hours invested.
    * Completion rates.
* **💾 Local Persistence:** Built with **SQLite** (via Drift) for robust, offline-first data storage.
* **🖥️ Desktop Optimized:** Native support for Windows (and Linux) using `dart:ffi` for high-performance database access.

---

## 🛠️ Tech Stack & Architecture

This project follows strict software engineering principles to ensure scalability and maintainability.

### Architecture
The app is built using **Clean Architecture**, separating concerns into three distinct layers:
1.  **Domain Layer:** Pure Dart entities and business logic (e.g., ROI calculations). No external dependencies.
2.  **Data Layer:** Handles data retrieval (Drift/SQLite) and mapping to domain entities.
3.  **Presentation Layer:** UI components (Widgets) and State Management.

### Libraries & Tools
| Technology | Usage |
| :--- | :--- |
| **Flutter** | UI Framework |
| **Riverpod** | State Management & Dependency Injection |
| **Drift** | Reactive Persistence library for SQLite |
| **Dart FFI** | Native C++ interoperability for SQLite on Desktop |
| **Freezed/Equatable** | Immutable data classes and value equality |
| **Go Router** | (Planned) Navigation |

---

## 🚀 Getting Started

### Prerequisites
* Flutter SDK (3.10.0 or higher)
* Dart SDK
* Visual Studio (C++ workload) for Windows development.

### Installation

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/your-username/game_ledger.git](https://github.com/your-username/game_ledger.git)
    cd game_ledger
    ```

2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

3.  **Generate code (for Drift & Riverpod):**
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```

4.  **Run the app:**
    * **Windows:** Select "Windows (desktop-x64)" in your IDE and press Run, or:
        ```bash
        flutter run -d windows
        ```
    * **Linux:** Ensure `libsqlite3-dev` is installed, then:
        ```bash
        flutter run -d linux
        ```

---

## 🗺️ Roadmap

- [x] **V1.0 - Core:** Library CRUD, Local DB, Basic Stats, Desktop Support.
- [ ] **V1.1 - UX:** Filtering, Sorting, and Search functionality.
- [ ] **V1.2 - Visuals:** Custom game covers and themes.
- [ ] **V2.0 - Cloud:** Data sync and backup.

---

## 🔮 Future Features & Roadmap

The project is evolving from a local tracking tool to a comprehensive financial analytics platform for gamers.

### ☁️ Phase 2: Cloud & Connectivity (In Progress)
- [ ] **Cross-Platform Sync:** Migration from local SQLite to a cloud-based solution (Supabase/Firebase) to enable seamless synchronization between **Desktop** and **Mobile** versions.
- [ ] **Steam Integration:** Implementation of the **Steam Web API** to automatically import owned games and playtimes, eliminating manual entry.
- [ ] **Data Portability:** Full CSV Export/Import functionality to ensure users own their data and to facilitate external analysis.

### 📈 Phase 3: Advanced Analytics & ROI Intelligence
- [ ] **Smart ROI Prediction:** Algorithms to analyze historical data by genre/tag. *Example: "Historically, RPGs cost you 0.50€/h, while FPS cost 4.00€/h. This new RPG purchase is highly likely to be profitable."*
- [ ] **Automated Metadata:** Integration with free external APIs (IGDB/RAWG) to automatically fetch game covers, release dates, and genres without user cost.

### 🌍 Phase 4: Internationalization (i18n)
- [ ] Support for **Spanish** (ES) and **Norwegian** (NO).

---

## 👩‍💻 Author

**Nerea** - *Software Developer*
* Student at UPV (Universidad Politécnica de Valencia).
* Specializing in Multi-platform Development and Clean Architecture.

---

_Built with 💙 and Flutter._