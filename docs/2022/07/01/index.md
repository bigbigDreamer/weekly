---
template: main.html
---

# Scholar's Weekly 第1期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/mYREQl.jpg)

(封面图片来源于：基于 `CC0` 协议的[stocksnap](https://stocksnap.io/photo/pond-water-X4MGQOAX2Q))

------

**关键词：***`bob`*、*`deepl`*、*`Building future facing frontend architectures`*、*`Oh Shit, Git!?!`*

## 1. [Building future facing frontend architectures](https://frontendmastery.com/posts/building-future-facing-frontend-architectures)

大概内容就是展开讲了讲：*深入探讨基于组件的前端架构是如何随着复杂度的增加而内爆的，以及如何避免这种情况。*

核心的几个思想：

- 在构建组件时，自上而下与自下而上会导致规模上的巨大不同结果。自上而下的心理模型通常是最直观的。在分解用户界面时，最常见的模型是在功能区域周围画上方框，然后成为你的组件。这种功能分解的过程是自上而下的，通常会直接导致创建具有特定抽象性的专门组件。

- 自上而下的设计和构建会导致单体组件的产生。 一个充满了单体组件的代码库会导致一个缓慢的、对变化没有弹性的终端前端架构。 单片式组件是不好的，因为。它们的变化和维护成本很高。

- 我们可以通过了解底层模型和情况来避免创建单体组件，这些底层模型和情况往往导致过早地创建抽象或继续扩展抽象。 `React` 在设计组件时更有效地适合自下而上的模式。这更有效地让你避免过早的抽象。

## 2. [Bob](https://github.com/ripperhe/Bob)

一款 `macOS` 平台 `翻译` 和 `OCR` 软件。**最新版本已经开始收费啦，需要的可以去 App Store 购买，但是旧版本依旧是免费的**

下面简单的聊一下，怎么利用旧版本搭配 `deepl` 优雅的使用翻译能力～

- [Bob 旧版本传送门](https://v0.bobtranslate.com/#/general/quickstart/install)
- [Bob-plugin-deepl](https://github.com/clubxdev/bob-plugin-deeplx)
- [docker-deepl-image](https://github.com/clubxdev/bob-plugin-deeplx/issues/2)
    - *注：原作者已删除镜像，可在 `issue` 列表里查看传送门*

## 3. [Oh Shit, Git!?!](https://ohshitgit.com/)

`Git` 是很难的：搞砸了很容易，而找出如何解决你的错误是他妈的不可能的。`Git` 文档有一个鸡和蛋的问题，你无法搜索如何让自己摆脱困境，除非你已经知道你需要知道的东西的名字，以便解决你的问题。因此，这里有一些我自己陷入的糟糕情况，以及我最终是如何用简单的英语使自己摆脱困境的。

🐶全文无"脏"字的帮我们树立如何摆脱使用 `git` 后陷入的一些常见的困境～

## Material for MkDocs 'Scotch Bonnet'

[Martin Donath](https://github.com/squidfunk)，也就是 [mkdocs-material](https://github.com/squidfunk/mkdocs-material) 的作者，即将达到他**每个月 $8000**的目标。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/P1u1rr.png)

## End

最后，简单总结这一个星期遇到的几个有意思的问题～

#### 1. 给[AktivJs](https://github.com/myNameIsDu/aktiv) 提了两个 `FIX` `PR`.

- [Fix template project can't pass stylelint](https://github.com/myNameIsDu/aktiv/pull/81)
    - 主要问题是使用 `stylelint` 必须添加 `stylelint-prettier` 作为依赖，不然会报错 `Could not find "stylelint-config-prettier". Do you need a configBasedir`。
- [fix(cli): set truly typescript file path for ForkTsCheckerWebpackPlugin](https://github.com/myNameIsDu/aktiv/pull/82)
    - 主要的问题是使用 `ForkTsCheckerWebpackPlugin` 去开发 `cli` 时，需要显示的指定 `typescriptPath` 告诉插件，从 `client` 端的 `node_modules` 中去找 `typescript` 依赖。
