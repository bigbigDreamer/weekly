---
template: main.html
---

# Scholar's Weekly 第14期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/7NBJ35.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/espresso-pour-WKJFSH6HRU))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`FinalizationRegistry`*、*`GC`*、*`SITE GENERATOR`*、*`pronouns`*、*`Toolbox`*

## 1.[FinalizationRegistry](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/FinalizationRegistry)
>相关地址：https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/FinalizationRegistry

------
透过[使用 JavaScript 垃圾收集器进行实验](https://dev.to/codux/experiments-with-the-javascript-garbage-collector-2ae3)这篇文章，了解了一个新的 `FinalizationRegistry` 类，以编程方式进行检测对象何时被垃圾收集。它适用于所有主要的 `web` 浏览器和 `Node.js`。

## 2.[THE JAVASCRIPT SITE GENERATOR REVIEW, 2023](https://www.zachleat.com/web/site-generator-review/)
>相关地址：https://www.zachleat.com/web/site-generator-review/

* Astro 2.0.15
* Eleventy 2.0.0
* Enhance 1.4.6 (added 27 February 2023)
* Gatsby 5.7.0
* Next.js 13.2.1
* Nuxt 3.2.2
* Remix 1.13.0
* SvelteKit 1.8.3

以上是一些静态站点生成器，作者分别从 `install times`、`client bundle size`、`node_modules weight`、`npm auditing` 等几个角度进行了工具对比。

## 3.[Add pronouns to your GitHub profile](https://github.blog/changelog/2023-03-01-add-pronouns-to-your-github-profile/)
>相关地址：https://github.blog/changelog/2023-03-01-add-pronouns-to-your-github-profile/

`Github` 支持设置 `代词` 了，英文中可以用代词 `they`、`her`、`he` ，中文中我理解就比较随意了，可以是自己或者朋友比较认同的代词。

例如：**夫子**、**吾**、**君**、**卿**、**媲**......

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/X4MAgO.png)

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/EAzXbD.png)

## 4.[Nodejs Toolbox](https://nodejstoolbox.com/)
>相关地址：https://nodejstoolbox.com/)

一个新的，对于 `node` 下运行的各种工具的分类汇总，大概看了下，其实不是很全，但是支持提 `PR`。

## 5.[2023年 JavaScript新趋势](https://www.jamesqquick.com/blog/javascript-trends-2023/)
>相关地址：https://www.jamesqquick.com/blog/javascript-trends-2023/

大体上是建议，尽可能的少用 `JS` ，比如 `TS`、比如 `deno`、`bun` 运行时等等。


------

## FAQ

## 1. [Ts-Reset](https://github.com/total-typescript/ts-reset)
>相关地址：https://github.com/total-typescript/ts-reset

一个类似 `CSS Reset` 的工具。

>TypeScript内置的类型定义并不完美。ts-reset可以让它们变得更好。

Good Job!

## 2. 如何突破浏览器限制，设置小于 `12px` 的字号？

```less
.parent {
    font-size: 12px;
    .child {
        font-size: 11px; // want set
        transform: scale(11/12);
        transform-origin: left center; // important，目的是居左垂直居中
    }
}
```

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
