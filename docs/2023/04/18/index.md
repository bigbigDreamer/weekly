---
template: main.html
---

# ryanwang's weekly 第18期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/E3nBmS.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/waves-crashing-FGHEH4HJZ5))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`magicast`*、*`Croner`*、*`lazyrepo`*、*`JSPM`*、*`chrome extension`*


### 1.[Croner](https://github.com/hexagon/croner)
> 相关地址：https://github.com/hexagon/croner

是 `cron` 在 `node`、`bun`、`deno`、`browser` 端的实现。

以下是一个快速示例，作为定位 `job` 的执行，是相当有用的工具。

```js
// Basic: Run a function at the interval defined by a cron expression
const job = Cron('*/5 * * * * *', () => {
	console.log('This will run every fifth second');
});

// Enumeration: What dates do the next 100 sundays occur on?
const nextSundays = Cron('0 0 0 * * 7').nextRuns(100);
console.log(nextSundays);

// Days left to a specific date
const msLeft = Cron('59 59 23 24 DEC *').nextRun() - new Date();
console.log(Math.floor(msLeft/1000/3600/24) + " days left to next christmas eve");

// Run a function at a specific date/time using a non-local timezone (time is ISO 8601 local time)
// This will run 2024-01-23 00:00:00 according to the time in Asia/Kolkata
Cron('2024-01-23T00:00:00', { timezone: 'Asia/Kolkata' }, () => { console.log('Yay!') });

```

## 2. [magicast](https://github.com/unjs/magicast)
>相关地址：https://github.com/unjs/magicast

一个超级有用的 `语法树` 快捷操作工具，可以像写 `js` 一样操作语法树。

## 3. [lazyrepo](https://github.com/ds300/lazyrepo)
> 相关地址：https://github.com/ds300/lazyrepo

自从 `nx.js` 和 `turborepo` 提出了 `cache` `build` 之后。

`lazyrepo` 的作者，做了纯功能迁出，目前还是 `build` 阶段，看起来不错，比较独立，独立于任意一种框架，有点类似于 `lerna-lit` 从 `lerna` 孵化出的最小集合。

### 4. [超过100多种数据结构和算法的仓库](https://github.com/trekhleb/javascript-algorithms/blob/master/README.zh-CN.md)
>相关地址：https://github.com/trekhleb/javascript-algorithms/blob/master/README.zh-CN.md

之前我有关注过，但是这次我做了一个记录，我觉得作为 **数据结构与算法** 的探索者，应该要深入源码级别看一看一些好的案例是怎么写的。

### 5. [Netlify 上的框架流行度](https://www.netlify.com/blog/framework-popularity-on-netlify/)

>相关地址：https://www.netlify.com/blog/framework-popularity-on-netlify/

<p>
<img width="300" src="https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/w7MBcS.png"/>
<img width="300" src="https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/5EgLVD.png"/>
<img width="300" src="https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/8PWHBC.png"/>
</p>

其实结果已经很明显了，从 `2020` 到 `2022` 的框架流行度上，基于 `React` 的，或者说为 `React` 所服务的框架中，`next` 的热度在持续上涨。

### 6.[什么是 source map](https://developer.chrome.com/en/blog/devtools-tips-23/)
>相关地址：https://developer.chrome.com/en/blog/devtools-tips-23

来自 `Google Chrome` 的作者的分享。

顺带分享以下 [source map 和 source code](https://sokra.github.io/source-map-visualization/) 的映射工具.
>相关地址：https://sokra.github.io/source-map-visualization/

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/nbB8Ks.png)

### 7.[JSPM 重新启动](https://jspm.org/jspm-cli)
>相关地址：https://jspm.org/jspm-cli

在上一周的周刊中，我有介绍到：[`JavaScript Import Maps 支持跨浏览器`](https://web.dev/import-maps-in-all-modern-browsers/)

所以在几年前荒废的 `jspm` 项目得以重启。

### 8.[chrome-extension-cli](https://github.com/dutiyesh/chrome-extension-cli)
>相关地址：https://github.com/dutiyesh/chrome-extension-cli

下一代浏览器扩展开发工具的脚手架项目，看起来不错，天然支持了 `webpack` ，并且作为预设。



## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
