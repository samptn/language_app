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
  ![Home Screen](https://github.com/user-attachments/assets/a653e009-892c-4d07-9ea3-f681d32af2e4)  

- **Alphabets Screen**  
  ![Alphabets Screen](https://github.com/user-attachments/assets/0305b87c-2cda-4a46-b311-7e5563dbdbd5)


> Replace the `assets/screenshots` path with the actual path where you upload your images/screenshots.

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
