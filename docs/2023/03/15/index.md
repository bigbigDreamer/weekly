---
template: main.html
---

# Scholar's Weekly 第15期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/sxaJHW.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/white-wine-JQNS6AHIZA))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`typescript`*、*`watch`*、*`react`*

### 1. [TypeScript 5.0](https://devblogs.microsoft.com/typescript/announcing-typescript-5-0/)
> 相关地址：https://devblogs.microsoft.com/typescript/announcing-typescript-5-0/

`TypeScript 5.0` 正式发布：

功能速览：

- Decorators
- const Type Parameters
- Supporting Multiple Configuration Files in extends
- All enums Are Union enums
- --moduleResolution bundler
- Resolution Customization Flags
- --verbatimModuleSyntax
- Support for export type *
- @satisfies Support in JSDoc
- @overload Support in JSDoc
- Passing Emit-Specific Flags Under --build
- Case-Insensitive Import Sorting in Editors
- Exhaustive switch/case Completions
- Speed, Memory, and Package Size Optimizations
- Breaking Changes and Deprecations

### 2. [turbowatch](https://github.com/gajus/turbowatch)
>相关地址：https://github.com/gajus/turbowatch

一个新的有意思的工具 `turbowatch`，它是用于监听指定的文件变化，重启服务的。

通常在 `cli` 工具开发中很有用。同类的还有 `nodemon`。

当然，如果想实现一个自定义的可以借助：`chokidar`。具体细节可以参考：[建立你自己的 `nodemon`](https://hire.jonasgalvez.com.br/2022/mar/20/building-your-own-nodemon/)

### 3. [React 的未来](https://changelog.com/jsparty/267)
> 相关地址：https://changelog.com/jsparty/267

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/YTU06l.png)

看起来最终的结果导向的是 `server` ，也就是 `ssr`、`ssr component`。

### 4. [20个TypeScript开发的最佳实践](https://itnext.io/mastering-typescript-21-best-practices-for-improved-code-quality-2f7615e1fdc3)
> 相关地址：https://itnext.io/mastering-typescript-21-best-practices-for-improved-code-quality-2f7615e1fdc3





------

## FAQ

### 1. `IOS` 不兼容的 CSS 属性

主要的问题就是，上下滚动，再次滚动上去，背景图片会丢失。

```css
body {
    background-image: url("xxx");
    background-attachment: fixed; // ios 设备不兼容，注意避坑
}
```

### 2. `driver.js` 在 `iphone 14 pro` 机型会定位错位。

解决办法就是：手撸一个引导组件。
> 大概思路：借助 `z-index` 层级关系。

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
