# Image Comparator

一个轻量级、零依赖的滑动图像对比原生组件。

大多数同类组件只支持滑动裁切，但对于大图精细对比（如设计稿比对、摄影修图前后、医学影像分析），**缩放和拖拽平移** 同样是刚需。市面上暂未找到类似的组件，因而重新造了这个小巧的轮子。

## 特性

- **滑动裁切** — 拖拽中间的滑块，左右对比两张图片
- **滚轮缩放** — 可放大对比，不遗漏任何细节
- **拖拽平移** — 放大后自由拖动图片，带边界校验防止拖出视野
- **全屏最大化** — 一键沉浸式对比，支持 `Escape` 键退出
- **自包含** — CSS 已内嵌到 JS 中，仅需引入一个文件
- **原生** — 零依赖，使用 Pointer Events，同时支持鼠标和触屏

## Demo

https://metadream.github.io/image-comparator

## 快速开始

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

> 容器宽高比默认由 `left-image` 加载后的自然尺寸决定，也可直接给 `.image-comparator` 设置固定的 `width` / `padding-bottom` 覆盖。

## 选项

```js
new ImageComparator('.image-comparator', {
  showMaximizeIcon: false,
  sliderPosition: 50,
  maxScale: 20,
  scaleStep: 0.2,
});
```

| 选项 | 类型 | 默认值 | 说明 |
|------|------|--------|------|
| `showMaximizeIcon` | `boolean` | `false` | 设为 `true` 显示右上角最大化按钮 |
| `sliderPosition` | `number` | `50` | 滑动条初始位置（百分比，取值 0–100） |
| `maxScale` | `number` | `20` | 最大缩放倍数 |
| `scaleStep` | `number` | `0.2` | 每次滚轮事件的缩放步进系数 |

## 浏览器支持

支持所有现代浏览器（Chrome、Firefox、Safari、Edge）。底层使用 Pointer Events，移动端触屏同样可用。