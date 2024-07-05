---
template: main.html
---

# ryanwang's weekly 第44期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/W72keY.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/glass-with-a-pink-drink-in-it-on-a-white-plate))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`Quil`*、*`Biome`*、*`React`*、*`Oclif`*

## FE News

### 1.[Quill 2.0](https://github.com/quilljs/quill/releases/tag/v2.0.0)
> 相关地址：https://github.com/quilljs/quill/releases/tag/v2.0.0

古老的 `Quil` 终于迎来了 `ESM` 的 `Tree-Shaking`  和 `TypeScript` 时代。

`Quil` 是一个富文本编辑器组件。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/f6dTwb.png)

不得不让我想起了 `2020` 年我曾提议让 `pubsub-js` 的作者在仓库内支持 `TypeScript` 的提议，结局当然是被拒绝了。

当然我尊重每一个开源工作者，所以后来我放弃了 `pubsub-js`，换成了 `mitt`，一个小的更加优异的类型支持库。

### 2.[Biome 1.7.0](https://github.com/biomejs/biome/releases/tag/cli%2Fv1.7.0)
> 相关地址：https://github.com/biomejs/biome/releases/tag/cli%2Fv1.7.0

`Biome 1.7.0` 的新版本中新增了 `biome migrate eslint` 可以实现项目的平滑迁移，作为高性能的 `Lint` 工具，我还没正式使用过，比起在实验阶段的 `RSLint` 。作为 `Rust` 的工具链来讲，更具有优势。

### 3.[更快的 JSX](https://github.com/facebook/react/pull/28768)
> 相关地址：https://github.com/facebook/react/pull/28768

早前的 `React` 版本中，`createElement` 性能缓慢，究其原因是因为对于 `Props` 做了 `clone`，所以在新版本中，也就是 `React 19` 之后，仅作传递。

具体的改动点可以看下 `PR` 的变动。

### 4.[Oclif](https://github.com/oclif/oclif)
> 相关地址：https://github.com/oclif/oclif

往期的周刊中应该有讲过，一个脚手架的生成工具，以及编写 `CLI` 的利器。

可以考虑实现 `zx`、`oclif`、`biome` 的合集操作。

这里小记一个 `todo` ，做一件事，简单写一个脚手架，实现 `changeset` 的命令行 `patch`。

### 5.[Porkbun 开启了 dev、app、foo](https://porkbun.com/land/get-dot-app-domain-dev-domain-foo-domain?coupon=APPDEVFOO5&utm_source=JavaScriptweekly&utm_medium=newsletter&utm_campaign=GoogleRys2024)
> 相关地址：https://porkbun.com/land/get-dot-app-domain-dev-domain-foo-domain?coupon=APPDEVFOO5&utm_source=JavaScriptweekly&utm_medium=newsletter&utm_campaign=GoogleRys2024

在 `Porkbun` 网站中开放了 `.dev`、`.app`、`.foo` 等域名的注册，首年仅需：`$5`。

在开发领域感兴趣的小伙伴可以抢注一波了。

### 6.[一个新的 VM 沙箱 “otto”](https://github.com/robertkrimen/otto)
> 相关地址：https://github.com/robertkrimen/otto

早前我们想要做在 `Node` 中的沙箱能力，通常借助于 `VM` 模块，实现代码 `Demo` 的即时运行演示，一些简要的介绍可以看“司徒正美”老师的：[nodejs 虚拟机](https://zhuanlan.zhihu.com/p/106503378)

无独有偶，这个工具的集成环境在 `go` 中：

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/fW8dKU.png)



## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
