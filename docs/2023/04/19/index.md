---
template: main.html
---

# ryanwang's weekly 第19期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/nHolAI.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/ocean-beach-ZJXS6NHIC1))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`npm`*、*`React`*、*`ES2023`*、*`Node`*、*`Vite`*、*`Enum`*

## 1.[npm-package-provenance](https://github.blog/2023-04-19-introducing-npm-package-provenance/)
>相关地址：https://github.blog/2023-04-19-introducing-npm-package-provenance

`npm` 支持了 `provenance`，用来给某一个包打一个标识，用来表明这个包通过了 `CI/CD` 的，用于提升包的安全性能。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/y75xAT.png)

## 2.[introduction to React](https://react.gg/visualized)
>相关地址：https://react.gg/visualized

比较生动形象地介绍 `React` 所经历的形态：`MV` -> `MVC` -> `MVVM`。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/Yr91JW.png)

以动画形式介绍，状态和 `UI` 之间流转。

## 3.[ES2023](https://pawelgrzybek.com/whats-new-in-ecmascript-2023/)
>相关地址：https://pawelgrzybek.com/whats-new-in-ecmascript-2023/

介绍下几个特性：

- `Array.prototype` 上新增 `findLast` & `findLastIndex`
```ts
const isEven = (number) => number % 2 === 0;
const numbers = [1, 2, 3, 4];

// from first to the last lookup
console.log(numbers.find(isEven));
// 2
console.log(numbers.findIndex(isEven));
// 1

// from last to the first lookup
console.log(numbers.findLast(isEven));
// 4
console.log(numbers.findLastIndex(isEven));
// 3
```

- 编写命令行 `CLI` 的头文件书写开始规范化
```ts
#!/usr/bin/env node

console.log('hi 👋');
```

- `WeakMap` 支持 `Symbol` 作为它的 `key`
- `Array` 支持了几个有用的不修改原数组的方法
  - `toReversed` 对标 `reverse`
  - `toSorted` 对标 `sort`
  - `toSplice` 对标 `splice`

## 4.[Node V20 Released](https://nodejs.org/en/blog/announcements/v20-release-announce)
> 相关地址：https://nodejs.org/en/blog/announcements/v20-release-announce

`Node` 发布了 `V20` 版本：
- 一个实验性的权限模型。这是 `Deno` 核心的一个功能，但现在你也可以限制 `Node` 中某些能力的访问。
- `V8` `11.3`（包括正则表达式 `/v` 标志支持）
- `node:test` 测试运行器稳定了。
- `ARM64` 上的 `Windows` 官方支持。
- 单个可执行文件打包机制的改进。

## 5.[Vite so faaaaster](https://sun0day.github.io/blog/vite/why-vite4_3-is-faster.html)
>相关地址：https://sun0day.github.io/blog/vite/why-vite4_3-is-faster.html

`Vite` 发布了 `4.3` 版本，号称 `faaaaaster`，这篇文章集中介绍了为了**快**，`Vite` 团队做了什么事情。

## 6.[在 JavaScript 中创建 enum 的四种形式](https://dmitripavlutin.com/javascript-enum/)
> 相关地址：https://dmitripavlutin.com/javascript-enum/

## 7.[Ohash](https://github.com/unjs/ohash)
>相关地址：https://github.com/unjs/ohash

超级快的 `hash` 库，我想用作大对象 `hash` 后做 diff 一定很快。

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
