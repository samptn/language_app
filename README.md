# Alphabet Explorer App

A simple Flutter application that allows users to explore the alphabets of various languages. The app contains two screens:

1. **Home Screen**: Displays a list of languages.
2. **Alphabets Screen**: Displays the alphabets of the selected language.

## Features

- **Home Screen**: 
  - Displays a list of popular languages.
  - Tapping on a language navigates to the Alphabets Screen.

- **Alphabets Screen**:
  - Shows the alphabets of the selected language.
  - Data is dynamically generated based on Unicode ranges.

## Screenshots

- **Home Screen**  
  ![Home Screen](assets/screenshots/home_screen.png)  

- **Alphabets Screen**  
  ![Alphabets Screen](assets/screenshots/home_screen.png)


> `assets/screenshots`

## Project Structure

### Main Files:
- **`main.dart`**: Entry point of the app.
- **`home_screen.dart`**: Displays the list of languages.
- **`alphabets_screen.dart`**: Displays the alphabets for the selected language.

---

## How It Works

1. The **Home Screen** lists supported languages with names and optional icons.
2. When a user taps a language, they are navigated to the **Alphabets Screen**.
3. The **Alphabets Screen** dynamically generates the alphabets using `String.fromCharCode`.

---

## Getting Started

1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd alphabet-explorer-app
