---
template: main.html
---

# Scholar's Weekly 第42期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/SfQvTi.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/you-got-this-empowering-jewelry?))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`Promise`*、*`VitePress`*、*`Signal`*、*`OCR`*

## FE News

### 1.[Promise 执行顺序](https://www.lydiahallie.com/blog/promise-execution)
> 相关地址：https://www.lydiahallie.com/blog/promise-execution

2024 版本的 `Promise` 执行顺序讲解，快来“温故而知新”吧。

### 2.[VitePress 1.0 发布](https://blog.vuejs.org/posts/vitepress-1.0)
> 相关地址：https://blog.vuejs.org/posts/vitepress-1.0

时隔已久的 `VitePress 1.0` 已经来临了。

### 3.[JavaScript Signal 提案](https://github.com/proposal-signals/proposal-signals)
> 相关地址：https://github.com/proposal-signals/proposal-signals

`JavaScript` 中的信号支持，示例如下，目前第一阶段的提案已经可以使用了：

```typescript
const counter = new Signal.State(0);
const isEven = new Signal.Computed(() => (counter.get() & 1) == 0);
const parity = new Signal.Computed(() => isEven.get() ? "even" : "odd");

// A library or framework defines effects based on other Signal primitives
declare function effect(cb: () => void): (() => void);

effect(() => element.innerText = parity.get());

// Simulate external updates to counter...
setInterval(() => counter.set(counter.get() + 1), 1000);
```

### 4.[Dexie](https://github.com/dexie/Dexie.js)
> 相关地址：https://github.com/dexie/Dexie.js

继 `localForge` 之后的又一个 `IndexDB` 包装器，但是二者的应用场景，我个人觉得不同。

`LocalForge` 的兼容性更胜一筹，但是 `Dexie` 在 `DB` 友好性上，进一步封装了对于 `IndexDB` 的操作难度。

### 5.[免费分配 `js.org` 后缀的域名](https://js.org/)
> 相关地址：https://js.org/

可以在这个仓库免费申请 `js.org` 后缀的域名使用，快来申请使用吧。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/hdSTdR.png)

### 6.[Web OCR](https://simonwillison.net/2024/Mar/30/ocr-pdfs-images/)
> 相关地址：https://simonwillison.net/2024/Mar/30/ocr-pdfs-images/

尝试在浏览器端，在不尽兴任何服务端交互的情况下进行 `OCR` 识别。

### 7.[octokit.js](https://github.com/octokit/octokit.js)
> 相关地址：https://github.com/octokit/octokit.js

适用于浏览器端的 `GitHub` `API` 全包库。



## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
