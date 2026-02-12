# 🚀 Moonshot

A SwiftUI app that lets users explore NASA's Apollo space missions, discover mission details, and learn about the astronauts who made history.

Built as part of the [100 Days of SwiftUI](https://www.hackingwithswift.com/100/swiftui) course (Day 39–42).

---

## About the App

Moonshot presents NASA's Apollo program missions in an interactive and visually appealing interface. Users can browse missions in either a grid or list layout, dive into mission highlights, view launch dates, and explore detailed profiles of each crew member.

---

## Screenshots

Coming soon!

---

## Features

- **Dual Layout Mode** — Toggle between a grid and a list view with a toolbar button, each with smooth fade-in transitions.
- **Mission Details** — View mission badges, formatted launch dates, highlights, and full crew rosters.
- **Astronaut Profiles** — Tap any crew member to see their biography and photo.
- **Horizontal Crew Scroll** — Browse crew members in a horizontally scrollable view within each mission.
- **JSON Decoding** — All mission and astronaut data is loaded and decoded from local JSON files using a generic `Bundle` extension.
- **Dark Theme** — Custom color theme with dark background and light background accents throughout the app.

---

## Key Concepts & Skills

| Concept | Description |
|---|---|
| `NavigationStack` & `NavigationLink` | Multi-level navigation between missions and astronaut profiles |
| `LazyVGrid` | Efficient grid layout for the main mission gallery |
| `List` with custom styling | List layout with hidden separators, hidden scroll indicators, and custom row backgrounds |
| JSON Decoding with Generics | Generic `Bundle` extension to decode any `Codable` type from JSON files |
| View Extraction & Reusability | Extracted `CrewView`, `MainGridView`, `MainListView`, and shared `CrewMember` model to keep views clean and modular |
| `@State` & `@FocusState` | State management for toggling layouts and controlling keyboard focus |
| Custom Color Theme | `ShapeStyle` extension for consistent `.darkBackground` and `.lightBackground` colors |
| Animations & Transitions | Smooth opacity transitions with `.onAppear`, `.animation()`, and `withAnimation` |
| `.toolbar` | Dynamic toolbar button that switches icon based on current layout mode |
| `containerRelativeFrame` | Responsive image sizing relative to the parent container |

---

## Project Structure

```
📁 Moonshot
├── 📁 App
│   └── MoonshotApp.swift
│
├── 📁 Models
│   ├── Astronaut.swift
│   ├── Mission.swift
│   └── CrewMember.swift
│
├── 📁 Views
│   ├── ContentView.swift
│   ├── MainGridView.swift
│   ├── MainListView.swift
│   ├── MissionView.swift
│   ├── AstronautView.swift
│   └── CrewView.swift
│
├── 📁 Data
│   ├── astronauts.json
│   └── missions.json
│
├── 📁 Extensions
│   ├── Bundle-Decodable.swift
│   └── Color-Theme.swift
│
└── Assets
```

---

## Requirements

- iOS 17.0+
- Xcode 15.0+
- Swift 5.9+

---

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/FacuVogel23/Moonshot.git
   ```
2. Open `Moonshot.xcodeproj` in Xcode.
3. Select a simulator or device and run the project.

---

## Acknowledgments

Project built following Paul Hudson's [100 Days of SwiftUI](https://www.hackingwithswift.com/100/swiftui). All mission data and astronaut information courtesy of NASA.

---

## License

This project is available under the [MIT License](LICENSE).
