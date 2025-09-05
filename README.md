# Bookly App
[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/AyaNasserEzat/bookly_app)

Bookly is a mobile application built with Flutter that allows users to browse, search, and discover books. It utilizes the Google Books API to fetch a comprehensive catalog of books, presenting them in a clean and user-friendly interface.
![image_alt](https://github.com/AyaNasserEzat/bookly_app/blob/fab7b9f60946820264ae697a9c6b54fe9848d1e5/iphone-multiple-screens-mockup.png)
## Features

- **Dynamic Home Screen**: Displays curated lists of "Featured Books" and "Newest Books" to help users discover new reading material.
- **Book Search**: Users can search for books by title or category.
- **Detailed Book Information**: Tapping a book reveals a details screen with its cover, title, author(s), rating, and a link to a web preview.
- **Similar Books Recommendations**: The details page suggests other books from the same category.
- **Smooth User Experience**: Implements shimmer loading effects (skeletons) while data is being fetched from the API, providing a polished and professional feel.
- **Error Handling**: Gracefully handles API errors and connectivity issues.

## ScreenShots
<p float="left">
   <img src="https://github.com/AyaNasserEzat/bookly_app/blob/4d29a19913ae536a02ea1f51b995fa6f8214ed0d/IMG-20250905-WA0012.jpg" width="200"/>
  <img src="https://github.com/AyaNasserEzat/bookly_app/blob/52d9923154e15235f1d078e66547b935f2c1ebc6/IMG-20250905-WA0010.jpg" width="200"/>
  <img src="https://github.com/AyaNasserEzat/bookly_app/blob/bcfc0ecba6e5d7979a2b3040a54352747a826f3c/IMG-20250905-WA0011.jpg" width="200"/>
</p>
<p float="left">
<img
src="
https://github.com/AyaNasserEzat/bookly_app/blob/63ce0ab18ec6281b70faafe4827a4af152f356c0/IMG-20250905-WA0009.jpg" width="200"/>
<img
src="
https://github.com/AyaNasserEzat/bookly_app/blob/63ce0ab18ec6281b70faafe4827a4af152f356c0/IMG-20250905-WA0008.jpg" width="200"/>
</p>

## Architecture & Technical Stack

The application is built following the principles of **Clean Architecture** to ensure a scalable, maintainable, and testable codebase.

- **Framework**: Flutter
- **Architecture**: MVVM Architecture
- **State Management**: **Flutter Bloc (Cubit)** for predictable and decoupled state management.
- **Networking**: **Dio** for performing HTTP requests to the Google Books API.
- **Dependency Injection**: **GetIt** is used as a service locator to manage dependencies.
- **Error Handling**: **Dartz** is used for functional error handling with the `Either` type to explicitly manage success and failure states.
- **Image Caching**: `cached_network_image` for efficient loading and caching of book cover images.
- **UI**: Custom widgets, `shimmer` for loading animations, and `url_launcher` to open book previews.

## Project Structure

The project is organized into feature-centric modules under the `lib/` directory, reflecting the Clean Architecture approach.

```
lib/
├── core/                  # Shared utilities, widgets, API services, error handling
│   ├── error/
│   ├── utils/
│   └── widgets/
├── feature/               # Main application features
│   ├── home/              # Home screen feature
│   │   ├── data/          # Data layer: models, repositories
│   │   └── presentation/  # Presentation layer: views, cubits
│   ├── search/            # Search feature
│   │   ├── data/
│   │   └── presentation/
│   └── splash/            # Splash screen
└── main.dart              # App entry point
```

- **`core`**: Contains code shared across multiple features, such as the API service client, custom widgets, and global styles.
- **`feature`**: Each sub-directory represents a distinct feature of the app (e.g., `home`, `search`).
- **`data` layer**: Includes data models (`models`), data sources, and repository implementations that abstract the origin of the data.
- **`presentation` layer**: Contains the UI (`views` and `widgets`) and the state management logic (`view_model/cubits`).

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

- Flutter SDK installed on your machine. You can follow the [official Flutter installation guide](https://docs.flutter.dev/get-started/install).

### Installation

1.  Clone the repository:
    ```sh
    git clone https://github.com/ayanasserezat/bookly_app.git
    ```
2.  Navigate to the project directory:
    ```sh
    cd bookly_app
    ```
3.  Install the required dependencies:
    ```sh
    flutter pub get
    ```
4.  Run the application:
    ```sh
    flutter run
