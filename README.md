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

### 3. Container Widget

A convenience widget that combines common painting, positioning, and sizing widgets.

Key properties:

- **width/height**: Dimensions of the container
- **color**: Background color (cannot be used with decoration)
- **decoration**: BoxDecoration for borders, gradients, shadows, etc.
- **margin**: Space around the container
- **padding**: Space inside the container
- **alignment**: How to position the child within the container
- **transform**: Apply transformations to the container

### 4. Image Widget

Displays images from various sources.

Image types:

- **AssetImage**: Images bundled with the app
- **NetworkImage**: Images from the internet
- **FileImage**: Images from the file system
- **MemoryImage**: Images from memory (Uint8List)

Key properties:

- **fit**: How the image should be inscribed (BoxFit.cover, BoxFit.contain, etc.)
- **width/height**: Dimensions of the image
- **alignment**: How to align the image within its bounds
- **color/colorBlendMode**: Apply color filters to the image

### 5. Column Widget

Displays children in a vertical array.

Key properties:

- **mainAxisAlignment**: How to align children vertically
- **crossAxisAlignment**: How to align children horizontally
- **mainAxisSize**: How much space to take vertically (min or max)
- **verticalDirection**: Direction of children placement (up or down)

### 6. Row Widget

Displays children in a horizontal array.

Key properties:

- **mainAxisAlignment**: How to align children horizontally
- **crossAxisAlignment**: How to align children vertically
- **mainAxisSize**: How much space to take horizontally (min or max)
- **textDirection**: Direction of children placement (left-to-right or right-to-left)

### 7. Expanded Widget

Expands a child of a Row, Column, or Flex to fill available space.

Key properties:

- **flex**: Relative proportion of space to fill (default: 1)
- **child**: The widget to expand

Use cases:

- Dividing screen into proportional parts
- Solving "unbounded height" problems in scrollable widgets
- Making widgets fill available space

### 8. Flexible Widget

Similar to Expanded but with more control over sizing.

Key properties:

- **flex**: Relative proportion of space (default: 1)
- **fit**: How to size the child (loose or tight)
  - **FlexFit.loose**: Child can be smaller than available space
  - **FlexFit.tight**: Child must fill available space (like Expanded)

### 9. Text Widget

Displays styled text.

Key properties:

- **style**: TextStyle for color, font, size, etc.
- **textAlign**: How to align text horizontally
- **overflow**: How to handle text that doesn't fit
- **maxLines**: Maximum number of lines
- **softWrap**: Whether text should break at soft line breaks

### 10. Spacer Widget

Creates empty space in Row or Column.

Key properties:

- **flex**: Relative amount of space to create (default: 1)

### 11. Card Widget

Material design card with rounded corners and elevation.

Key properties:

- **elevation**: Shadow depth
- **shape**: Shape of the card (RoundedRectangleBorder, etc.)
- **color**: Background color
- **margin**: Space around the card
- **child**: Content of the card

### 12. Center Widget

Centers its child within itself.

Key properties:

- **widthFactor/heightFactor**: Multiples of child's size
- **child**: Widget to center

### 13. Align Widget

Aligns its child within itself and optionally sizes itself based on the child's size.

Key properties:

- **alignment**: Where to position the child (Alignment values)
- **widthFactor/heightFactor**: Multiples of child's size

### 14. Positioned Widget

Controls the position of a child in a Stack.

Key properties:

- **left/top/right/bottom**: Distance from respective edge
- **width/height**: Size of the child
- **child**: Widget to position

Note: Must be a direct child of a Stack.

### 15. Stack Widget

Positions children relative to the edges of the stack.

Key properties:

- **alignment**: Default alignment for non-positioned children
- **fit**: How to size the stack (loose or expand)
- **clipBehavior**: How to clip children that overflow
- **children**: Widgets to stack (bottom to top)

### 16. Divider Widget

A thin horizontal line with padding on either side.

Key properties:

- **height**: Total height of divider with padding
- **thickness**: Thickness of the line
- **color**: Color of the line
- **indent/endIndent**: Space before/after the line

### 17. VerticalDivider Widget

A thin vertical line with padding on either side.

Key properties:

- **width**: Total width of divider with padding
- **thickness**: Thickness of the line
- **color**: Color of the line
- **indent/endIndent**: Space before/after the line

### 18. CircleAvatar Widget

A circle that represents a user or entity.

Key properties:

- **backgroundColor**: Background color
- **foregroundColor**: Color for text/icons
- **radius**: Size of the circle
- **minRadius/maxRadius**: Min/max size constraints
- **backgroundImage/foregroundImage**: Images to display
- **child**: Widget to display (typically text or icon)

### 19. SizedBox Widget

A box with a specified size.

Key properties:

- **width/height**: Dimensions of the box
- **child**: Widget to constrain

Use cases:

- Creating fixed-size spaces
- Constraining widgets to specific dimensions
- Creating invisible spacers with width/height

### 20. ConstrainedBox Widget

Imposes additional constraints on its child.

Key properties:

- **constraints**: BoxConstraints to apply
- **child**: Widget to constrain

### 21. FittedBox Widget

Scales and positions its child within itself.

Key properties:

- **fit**: How to inscribe the child (BoxFit values)
- **alignment**: How to align the child
- **clipBehavior**: How to clip overflowing content

### 22. FractionallySizedBox Widget

Sizes its child to a fraction of the total available space.

Key properties:

- **widthFactor/heightFactor**: Fraction of available width/height
- **alignment**: How to align the child
- **child**: Widget to size

### 23. RotatedBox Widget

Rotates its child by a quarter turn (90 degrees).

Key properties:

- **quarterTurns**: Number of clockwise quarter turns
- **child**: Widget to rotate

### 24. LimitedBox Widget

Limits its size only when unconstrained.

Key properties:

- **maxWidth/maxHeight**: Maximum width/height when unconstrained
- **child**: Widget to limit

### 25. Opacity Widget

Makes its child partially transparent.

Key properties:

- **opacity**: Opacity value (0.0 to 1.0)
- **alwaysIncludeSemantics**: Whether to include semantics
- **child**: Widget to make transparent

### 26. Icon Widget

Displays a graphical symbol.

Key properties:

- **icon**: IconData to display
- **size**: Size of the icon
- **color**: Color of the icon
- **semanticLabel**: Description for accessibility

### 27. ListTile Widget

A single fixed-height row that typically contains text and icons.

Key properties:

- **leading**: Widget to display before the title
- **title**: Primary content
- **subtitle**: Additional content below the title
- **trailing**: Widget to display after the title
- **isThreeLine**: Whether to reserve space for three lines
- **dense**: Whether to make the tile more compact
- **enabled**: Whether the tile is interactive
- **onTap/onLongPress**: Callbacks for interactions
- **contentPadding**: Padding for the content

### 28. ExpansionTile Widget

A ListTile with a trailing icon that expands or collapses to reveal or hide content.

Key properties:

- **leading**: Widget to display before the title
- **title**: Primary content
- **trailing**: Widget to display after the title (usually an icon)
- **children**: Widgets to show when expanded
- **initiallyExpanded**: Whether to start expanded
- **backgroundColor/collapsedBackgroundColor**: Colors when expanded/collapsed
- **textColor/collapsedTextColor**: Text colors when expanded/collapsed
- **iconColor/collapsedIconColor**: Icon colors when expanded/collapsed
- **onExpansionChanged**: Callback when expansion state changes

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
