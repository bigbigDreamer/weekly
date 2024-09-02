---
template: main.html
---

# ryanwang's weekly 第52期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/zoxTIM.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/person-sits-looking-out-towards-still-water))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`内存泄漏`*、 *`Unit Tests`*、 *`volta`*

## FE News

### 1. [JavaScript 中内存泄漏的常见原因](https://www.trevorlasn.com/blog/common-causes-of-memory-leaks-in-javascript)
> 相关地址：https://www.trevorlasn.com/blog/common-causes-of-memory-leaks-in-javascript

文中详细介绍了 `node` 和 `浏览器` 端的内存泄漏的场景，以及如何去排查解决。

> 内存泄漏：当您的应用程序分配内存，但在不再需要时未能释放时，就会发生内存泄漏。随着时间的推移，这些未释放的内存块会累积起来，导致内存消耗逐渐增加。

这里暂时只列举 `JavaScript` 中的内存泄漏场景：

- 变量管理不当

```typescript
let cache = {};

function storeData(key, value) {
    cache[key] = value;
}

// Simulating the function being called multiple times
storeData('item1', new Array(1000000).fill('A'));
storeData('item2', new Array(1000000).fill('B'));

// Memory leak: data stored in 'cache' is never released

```

- 持久全局对象
```typescript
global.config = {
    settings: new Array(1000000).fill('Configuration')
};
// Memory leak: 'config' is global and remains in memory for the entire application lifecycle

```
- 事件监听器未移除

```typescript
const EventEmitter = require('events');
const myEmitter = new EventEmitter();

function listener() {
    console.log('Event triggered!');
}

// Adding event listeners repeatedly
setInterval(() => {
    myEmitter.on('event', listener);
}, 1000);

```

- 闭包捕获变量

```typescript
function createClosure() {
    let capturedVar = new Array(1000000).fill('Data');

    return function() {
        console.log(capturedVar[0]);
    };
}

const closure = createClosure();
// The closure holds onto 'capturedVar', even if it's not used anymore.

```

- 非托管回调

```typescript
function fetchData(callback) {
    let data = new Array(1000000).fill('Data');

    setTimeout(() => {
        callback(data);
    }, 1000);
}

function handleData(data) {
    console.log(data[0]);
}

fetchData(handleData); // The 'data' array remains in memory.

```

- bind() 的错误使用

```typescript
function MyClass() {
    this.largeData = new Array(1000000).fill('leak');

    window.addEventListener('click', this.handleClick.bind(this));
}

MyClass.prototype.handleClick = function() {
    console.log('Clicked');
};

// If MyClass instance is destroyed, but the event listener is not removed,
// the bound function will keep the instance alive in memory.
```

- 循环引用

### 2. [使用 React 测试库编写单元测试的技巧](https://spin.atomicobject.com/react-testing-library-unit-tests/)
> 相关地址：https://spin.atomicobject.com/react-testing-library-unit-tests/

文章中关于 `RTL` 介绍的内容并不是很多，但是核心的内容主要偏向于 `dom` 测试。

### 3.[volta 2.0](https://github.com/volta-cli/volta/releases)
> 相关地址：https://github.com/volta-cli/volta/releases

可能大家对于 `volta` 很陌生，但是根据我对于 `volta` 的使用经验和体验来看，还是蛮不错的。

简单介绍下：

> 快速：快速无缝地安装和运行任何 JS 工具！Volta 采用 Rust 构建，并以快速静态二进制文件的形式发布。

> 可靠：确保项目中的每个人都拥有相同的工具——而不会干扰他们的工作流程。

> 通用：无论是包管理器、Node 运行时还是操作系统，您只需要一个命令：volta install。

总结一下，一个比 `nvm` 更强大的 `nvm plus`。

------

以下是 `2.0` 主要的更新内容：

- 🚨（突发）🚨 我们升级了用于构建 Volta 的 Rust 版本，从而不再支持旧版本的 glibc 和 Linux 内核。有关受支持版本的详细信息，请参阅2022 年 8 月的 Rust 公告。值得注意的是，这意味着我们不再支持 CentOS 6（#1611）
- 🚨（突发）🚨 由于成本和代码签名流程的变化，我们已放弃 Windows 安装程序的代码签名。我们现在建议使用winget在 Windows 上安装 Volta（#1650）
- 🎉（新）🎉 我们现在为 ARM Linux 和 ARM Windows 提供预构建的二进制文件（#1696、#1801）
- Volta 不再需要在 Windows 上启用开发者模式（#1755）
- volta uninstall现在提供更好的帮助和错误消息来描述其使用和局限性（#1628，#1786）
- Volta 现在将在 Mac 上使用通用二进制文件，而不是单独的 Intel 和 ARM 特定版本（#1635）
- 切换到.zshenv默认安装配置文件脚本，而不是.zshrc（#1657）
- 为该命令添加了一个默认垫片，它是( #1670 )yarnpkg的别名yarn
- 添加了一个新--very-verbose标志以启用更多日志记录（注意：我们尚未实现太多额外的日志记录）（#1815）
- 简化了获取过程以删除多余的网络请求并解决挂起问题（#1812）
- 一些依赖项升级和清理重构来自@tottoto

### 4. [Float UI](https://floating-ui.com/)
> 相关地址：https://floating-ui.com/

一个用于制作 `Modal` 、`Tooltip` 、`Dropdown` 等浮动元素的利器。

- 兼容性：底层的核心库兼容到 `ie11`。博主也将其运用于生产中，目前没什么问题反馈。
- 实用性：内部的功能都是以插件形式加载，一些常见的问题在官网的模块中已经做了解答。

造有用的轮子之用轮子。

### 5.[关于 TypeScript 的50个细微的错误](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/50-ts.pdf)
> 相关地址：https://leanpub.com/bookstore?type=all&category=computer_programming

一本电子书，但是可以免费下载，本周刊已经提供了下载路径。

### 6.[一个零依赖的日志库](https://github.com/dahlia/logtape)
> 相关地址：https://github.com/dahlia/logtape





## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
