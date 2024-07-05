---
template: main.html
---

# ryanwang's weekly 第33期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/QlfVZW.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [pixabay](https://www.istockphoto.com/en/photo/man-silhouette-on-background-of-famous-risin-og-kellingin-rocks-gm1499995805-521558082?phrase=lighthouse+hill))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`fsx`*、*`js`*、*`remoteStorage`*

## FE News

### 1. [每一个 Jser 都应该知道的 33 个概念](https://github.com/leonardomso/33-js-concepts?tab=readme-ov-file#-table-of-contents)
> 相关地址：https://github.com/leonardomso/33-js-concepts?tab=readme-ov-file#-table-of-contents
如图所示，仅列了部分，都是一些比较核心且又基础的概念，可以再温习一遍。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/vGlmMC.png)

### 2.[fsx](https://github.com/humanwhocodes/fsx)
>相关地址：https://github.com/humanwhocodes/fsx

一个现代化的 `fs` 系统：

**读文件**

```typescript
// read plain text
const text = await fsx.text("/path/to/file.txt");

// read JSON
const json = await fsx.json("/path/to/file.json");

// read bytes
const bytes = await fsx.arrayBuffer("/path/to/file.png");
```
**写文件**

```typescript
// write a string
await fsx.write("/path/to/file.txt", "Hello world!");

const bytes = new TextEncoder().encode("Hello world!").buffer;

// write a buffer
await fsx.write("/path/to/file.txt", bytes);
```

**检测**

```typescript
if (await fsx.isFile("/path/to/file.txt")) {
    // handle the file
}

```

**删除**

```typescript
// delete a file
await fsx.delete("/path/to/file.txt");

// delete a directory
await fsx.delete("/path/to");
```

我个人使用下来的的感官，比原生的 `fs` 要好用的多，完全的 `Promise` 更符合现代编程。

### 3.[drawing.garden](https://drawing.garden/)
>相关地址：https://drawing.garden

一个可以跟随鼠标移动画画的网站，（：说实话，挺无趣的，但是我还比较感兴趣，lol......

我自己潜画了一个“一箭穿心💘”，还行吧（：丑丑的

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/d7OpKx.png)

### 4.[jsondiffpatch](https://github.com/benjamine/jsondiffpatch)
> 相关地址：https://github.com/benjamine/jsondiffpatch

如果你和我一样在寻找一个 `json diff` 的库，那么我极力推荐：`jsondiffpatch`

```typescript
import * as jsondiffpatch from 'jsondiffpatch';
const jsondiffpatchInstance = jsondiffpatch.create(options);
```

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/GGxVbq.png)

最强大莫过于 `Diff Pretty Output`，这点能力是比较好的。

### 5.[remoteStorage](https://github.com/FrigadeHQ/remote-storage)
> 相关地址：https://github.com/FrigadeHQ/remote-storage

为毛我感觉有些鸡肋呢？`redis` 不香了吗？不过可能作者有自己的动机：

> 例如，假设您希望向所有新注册产品的用户显示一个欢迎模态框。如果您使用localStorage来跟踪用户是否已经看过此模态框，则每当他们切换设备或浏览器时，用户将继续重复获得这种体验。

以 `uuid` 作为实例，扩展多例，支持服务 `docker` 自部署。


## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
