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
  <img src="https://github.com/AyaNasserEzat/bookly_app/blob/a93106de0cc4ef862285bee1c5a12a77c416b885/splash_screen.jpeg" width="200" />
  <img src="https://github.com/AyaNasserEzat/bookly_app/blob/a93106de0cc4ef862285bee1c5a12a77c416b885/home_screen.jpeg" width="200" />
  <img src="https://github.com/AyaNasserEzat/bookly_app/blob/a93106de0cc4ef862285bee1c5a12a77c416b885/book_details.jpeg" width="200" />
</p>
<p float="left">
  <img src="https://github.com/AyaNasserEzat/bookly_app/blob/50e149e8772d3f9edd18d8cf6e9223076f20986c/search.jpeg" width="200" />
  <img src="https://github.com/AyaNasserEzat/bookly_app/blob/50e149e8772d3f9edd18d8cf6e9223076f20986c/shimmer.jpeg" width="200" />
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
