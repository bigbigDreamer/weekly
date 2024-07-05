---
template: main.html
---

# ryanwang's weekly 第25期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/LlBzz3.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/bird-egret-KY9VTTICLN))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`wasm`*、*`Typescript`*、*`RSC`*、*`JS`*、*`bundle.js`*

### 1.[一个在浏览器端的 `wasm` polyfill](https://github.com/evanw/polywasm)
> 相关地址：https://github.com/evanw/polywasm

**大致背景：**
- `Apple` 的锁定模式会在 `safari` 中禁用 `WebAssembly`，`polyfill` 使得在这种情况下让运行成为可能。
- 作者认为他从中学到了很多新的东西。

### 2.[TypeScript 5.1 发布](https://devblogs.microsoft.com/typescript/announcing-typescript-5-1/)
> 相关地址：https://devblogs.microsoft.com/typescript/announcing-typescript-5-1/

功能点：

- [`undefined` 返回函数的隐式返回更容易](https://devblogs.microsoft.com/typescript/announcing-typescript-5-1/#easier-implicit-returns-for-undefined-returning-functions)
- [`getter` 和 `setter` 的不相关类型](https://devblogs.microsoft.com/typescript/announcing-typescript-5-1/#unrelated-types-for-getters-and-setters)
- [`JSX` 元素和 `JSX` 标签类型之间的解耦类型检查](https://devblogs.microsoft.com/typescript/announcing-typescript-5-1/#decoupled-type-checking-between-jsx-elements-and-jsx-tag-types)
- [命名空间 `JSX` 属性](https://devblogs.microsoft.com/typescript/announcing-typescript-5-1/#namespaced-jsx-attributes)
- [`typeRoots` 在模块解析中被咨询](https://devblogs.microsoft.com/typescript/announcing-typescript-5-1/#typeroots-are-consulted-in-module-resolution)
- [`JSX` 标签的链接游标](https://devblogs.microsoft.com/typescript/announcing-typescript-5-1/#linked-cursors-for-jsx-tags)
- [`@paramJSDoc` 标签的代码段补全](https://devblogs.microsoft.com/typescript/announcing-typescript-5-1/#snippet-completions-for-param-jsdoc-tags)
- [优化](https://devblogs.microsoft.com/typescript/announcing-typescript-5-1/#optimizations)
- [重大变化](https://devblogs.microsoft.com/typescript/announcing-typescript-5-1/#breaking-changes)

其中我觉得重大变化是大家需要关注的点，就是 `TypeScript 5.1` 默认要求 `Node` 版本必须在 `14.17` 以上了。

### 3.[RSC 从零开始](https://github.com/reactwg/server-components/discussions/5)
> 相关地址：https://github.com/reactwg/server-components/discussions/5

`Dan` 写了一个从零开始 **服务端组件** 的教程，旨在为哪些想研究服务器组件背后思想的人来一次深度思考和学习。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/0uiT6g.png)

### 4.[The many ways to select the n-th character from a string.](https://christianheilmann.com/2023/06/02/the-many-ways-to-select-the-n-th-character-from-a-string/)
> 相关地址：https://christianheilmann.com/2023/06/02/the-many-ways-to-select-the-n-th-character-from-a-string/

选择一个字符串中的第 `n` 个字符的许多种方法：

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/pxOkXo.jpg)

### 5.[ESLint Plugin Perfectionist](https://github.com/azat-io/eslint-plugin-perfectionist)
> 相关地址：https://github.com/azat-io/eslint-plugin-perfectionist

排序一些常见的内容：`sorting various data, such as objects, imports, TypeScript types, enums, JSX props, etc.`

**动机：美学、可维护性、一致性、可读性**

### 6.[bundle.js](https://blog.okikio.dev/documenting-an-online-bundler-bundlejs)
> 相关地址：https://blog.okikio.dev/documenting-an-online-bundler-bundlejs

基于 `Esbuild` 的在线打包器，支持在线输出打包分析。

官方给出的能力或者好处有下面这些：

- 更容易调试错误
- 可以验证生成的捆绑代码
- 配置捆绑包的能力
- `tree shaking` 捆绑包的能力
- 能够查看捆绑包的可视化分析
- 支持来自不同内容交付网络 (CDN)的不同类型的模块，例如从 deno 模块到 npm 模块到随机 github 脚本等的 CDN...









## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
