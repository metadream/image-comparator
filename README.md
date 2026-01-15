# ImageComparer

一个容易使用且功能齐备的滑动图像对比原生组件。支持滑动条实时裁切图像，支持鼠标滚轮缩放，支持图像拖动及边界校验，支持最大化切换。
大多数类似组件仅支持滑动裁切图像，但对于大图片精细对比而言，缩放和拖动是同等重要的功能，因而重新造了一个轮子。

## Demo
https://metadream.github.io/image-comparer

## Usage
```js
<link rel="stylesheet" href="image-comparer.css"/>
<script src="image-comparer.js"></script>

<div class="image-comparer">
  <img class="left-image" src="before.jpg">
  <img class="right-image" src="after.png">
</div>

<script>
new ImageComparer('.image-comparer');
</script>
```