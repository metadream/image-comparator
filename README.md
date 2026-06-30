# Image Comparator

A lightweight, zero-dependency native image comparison slider component.

Most similar components only support sliding crop, but for detailed image comparison (design mockups, photo retouching before/after, medical imaging analysis), **zoom and pan** are equally essential. No existing component fit the bill, hence this small custom wheel.

## Features

- **Slide crop** — drag the middle handle to compare left and right images
- **Scroll zoom** — zoom in to inspect every detail
- **Drag to pan** — freely move the image when zoomed in, with boundary clamping
- **Fullscreen maximize** — one-click immersive comparison, press `Escape` to exit
- **Self-contained** — CSS is inlined in JS, just include one file
- **Native** — zero dependencies, uses Pointer Events (mouse + touch)

## Demo

https://metadream.github.io/image-comparator

## Quick Start

```html
<script src="image-comparator.js"></script>

<div class="image-comparator">
  <img class="left-image" src="before.jpg">
  <img class="right-image" src="after.png">
</div>

<script>
new ImageComparator('.image-comparator');
</script>
```

> The container aspect ratio is determined by the loaded `left-image` natural dimensions. You can also set a fixed `width` / `padding-bottom` on `.image-comparator` to override.

## Options

```js
new ImageComparator('.image-comparator', {
  showMaximizeIcon: false,
  sliderPosition: 50,
  maxScale: 20,
  scaleStep: 0.2,
});
```

| Option | Type | Default | Description |
|--------|------|---------|-------------|
| `showMaximizeIcon` | `boolean` | `false` | Show the maximize button in the top-right corner |
| `sliderPosition` | `number` | `50` | Initial slider position (percentage, 0–100) |
| `maxScale` | `number` | `20` | Maximum zoom level |
| `scaleStep` | `number` | `0.2` | Zoom step per scroll event |

## Browser Support

All modern browsers (Chrome, Firefox, Safari, Edge). Uses Pointer Events under the hood, works on mobile touch screens.
