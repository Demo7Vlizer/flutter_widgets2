# flutter_widgets

A Flutter project demonstrating various essential widgets and concepts.

## Widget Notes

### 1. Padding in Flutter
```
Padding Hierarchy:
/*
 * Padding
 *      EdgeInsetsGeometry (Base/Parent class)
 *          /                  \
 *    EdgeInsets          EdgeInsetsDirectional
 */
```
- **EdgeInsetsGeometry**: The base class for describing padding
- **EdgeInsets**: Uses absolute directions (left, right, top, bottom)
- **EdgeInsetsDirectional**: Uses relative directions (start, end) - better for RTL/LTR language support

### 2. Rich Text Widgets
Rich Text allows you to display text with different styles in the same widget.

Examples covered:
1. Basic text styling
2. Interactive text (clickable "Sign Up" link)
3. Text with icons
4. Text with different font sizes and colors

Usage examples:
```dart
// Basic Rich Text
Text.rich(
  TextSpan(
    text: 'Hello',
    style: TextStyle(color: Colors.black),
    children: [
      TextSpan(
        text: 'World',
        style: TextStyle(color: Colors.blue),
      ),
    ],
  ),
)

// Interactive Text
TextSpan(
  text: 'Sign Up',
  recognizer: TapGestureRecognizer()..onTap = () {
    // Handle tap
  },
)
```

## Getting Started

This project is a starting point for learning Flutter widgets. Each widget is demonstrated with practical examples.

For Flutter beginners:
1. Make sure you have Flutter installed
2. Clone this repository
3. Run `flutter pub get` to install dependencies
4. Study the examples in `lib/` directory

### Useful Resources

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [Flutter Documentation](https://docs.flutter.dev/)
