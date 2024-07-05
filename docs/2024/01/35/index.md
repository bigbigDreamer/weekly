---
template: main.html
---

# ryanwang's weekly 第35期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/Y1B7AL.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/pink-spring-tree-blossoms?c=background))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`Bun`*、*`mutative`*、*`Web Worker`*、*`React 18`*

## FE News

### 1.[The Bun Shell](https://bun.sh/blog/the-bun-shell)
> 相关地址：https://bun.sh/blog/the-bun-shell

过去由于操作系统的不一致性，`windows`、`linux`、`macos` 等操作一些一致性的 `shell` 命令异常困难，我们需要类似的 `polyfill` 来书写跨平台的 `cli` 脚本。

`bun` 作为实验性质的嵌入式语言和解释器，实现了自己的一套的跨平台解决方案，例如：

```bash
import { $ } from "bun";

await $`cd .. && rm -rf node_modules/rimraf`;
```

### 2.[mutative](https://github.com/unadlib/mutative)
> 相关地址：https://github.com/unadlib/mutative

继 `immer` 之后的又一个 `不可变数据` 操作库，性能号称比 `immer` 快 `10x`。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/33JSay.png)

### 3.[workerpool](https://github.com/josdejong/workerpool)
> 相关地址：https://github.com/josdejong/workerpool

`workerpool` 提供了一种创建工作池的简单方法，用于动态卸载计算以及管理专用工作池。`workerpool` 基本上实现了线程池模式。有一个工作人员池来执行任务。新任务被放入队列中。工作人员一次执行一个任务，完成后从队列中选择一个新任务。可以通过自然的、基于承诺的代理来访问工作人员，就好像它们可以直接在主应用程序中一样。

`Workerpool` 在 `Node.js`、`Chrome`、`Firefox`、`Opera`、`Safari` 和 `IE10+` 上运行。

### 4.[culorjs](https://culorijs.org/)
>相关地址：https://culorijs.org/

`Culori` 是一个 `JavaScript` 颜色库，支持 `CSS Colors Level 4` 规范中定义的所有格式以及其他颜色空间的转换和操作。它可以处理颜色差异、插值、渐变、混合模式等等。

### 5.[SonarQube 团队升级到 React 18 的经验只谈](https://www.sonarsource.com/blog/upgrading-react-18-sonarqube/)
> 相关地址：https://www.sonarsource.com/blog/upgrading-react-18-sonarqube

主要有以下三个问题：

- 一些 `TypeScript` 类型发生了变化
  - `npx types-react-codemod preset-18 ./src` 可以借助：`codemod` 帮助我们升级
- `React` 测试库也必须更新 
- `React 18` 带来了重大变化

其他更多的信息可以查看文章地址，其实 `18` 带来的变化还是很显著的，比如 `全自动的批量更新`，`更优异的中断式更新`。


## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
