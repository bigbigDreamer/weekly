---
template: main.html
---

# Scholar's Weekly 第22期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/Eo9GkU.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/black-alarmclock-TZHYCANBO9))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`Bun`*、*`Deopt Explorer`*、*`Promise.withResolvers`*、*`Unit Test`*、*`Jest`*

### 1.[Bun new bundler](https://bun.sh/blog/bun-bundler)
>相关地址：https://bun.sh/blog/bun-bundler

`Bun` 有了一个原生的打包工具，经过基准测试后的速度，`Unbelievable，so cool...`。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/kWJFWJ.jpg)

此外还有一个更酷的内容：

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/AUiBLz.png)

### 2.[Using Bun.js as a bundler](https://shaneosullivan.wordpress.com/2023/05/17/using-bun-js-as-a-bundler/)
>相关地址：https://shaneosullivan.wordpress.com/2023/05/17/using-bun-js-as-a-bundler

刚好作为承接第一条周刊的内容，作为一个使用者的感受，`Shane O'Sullivan` 有了自己的心得体会，包括对于 `vercel` 上构建内容的一些坑点。

`em`，教科书式指导。

### 3.[Deopt Explorer 简介](https://devblogs.microsoft.com/typescript/introducing-deopt-explorer/)
>相关地址：https://devblogs.microsoft.com/typescript/introducing-deopt-explorer/

`Deopt Explorer` 的工具来帮助我们探索 `V8` 在编译器执行时产生的各种反优化、`IC` 和对象类型。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/AR8neP.png)

举个例子，插件可以查看函数的状态信息。

### 4.[Promise.withResolvers](https://github.com/tc39/proposal-promise-with-resolvers)
>相关地址：https://github.com/tc39/proposal-promise-with-resolvers

通常大家是如何处理顶层的 `new Promise` 的 `rej` 和 `resolve` 函数的呢？

```ts
const handler = (callback) => new Promise(
    (res, rej) => {
        callback(res, rej);
    }
);

handler((res, rej) => {
    if(true) {
        res(); // do right something
    } else {
        rej(); // do reject
    }
})
```

现在有了 `Promise.withResolvers` 可以很好的缓解这个状态，它有点像是 `React Context`，按照规范特性的描述：

>On subclasses of Promise, the withResolvers method should produce instances of the subclass.

那么我们可以改造下，像是下面这种：

```ts
const handler = (callback) => new Promise(
    (res, rej) => {
        callback();
    }
);

handler(() => {
    const { reject, resolve, promise } = Promise.withResolvers();

    if(true) {
        resolve(); // do right something
    } else {
        reject(); // do reject
    }
});
```

`so cool!`。

### 5.[使用纯 JavaScript 获得完整的类型支持](https://www.pausly.app/blog/full-type-support-with-plain-javascript)
>相关地址：https://www.pausly.app/blog/full-type-support-with-plain-javascript

在某种特定场景下，你不必修改 `*.js` 为 `*.ts` 获取类型支持，完全可以借助 `JSDOC` 获取支持。

### 6.[你的 Jest 测试可能是错误的](https://jamiemagee.co.uk/blog/your-jest-tests-might-be-wrong/)
> 相关地址：https://jamiemagee.co.uk/blog/your-jest-tests-might-be-wrong/

你的 `Jest` 套件配置可能有些问题，`Magee` 向我们展示一组比较好的默认配置，因为一些测试状态可能会发生泄漏，导致我们的测试用例结果可能是错误的：
- 正确的用例实际因为状态未重置导致错误，让人产生困惑；
- 错误的用例因为状态未重置导致正确，让程序产生“欺骗”；

```json
{
  clearMocks: true,
  resetMocks: true,
  restoreMocks: true,
  resetModules: true // It depends
}
```

### 7.[Legend-State](https://legendapp.com/open-source/legend-state-v1/)
> 相关地址：https://legendapp.com/open-source/legend-state-v1/

在速度和内存上取得里压制性胜利的一个新的 `React State` 库，可以看下简单的基准测试：

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/4hFAYQ.jpg)

### 8.[headless-qr](https://github.com/Rich-Harris/headless-qr)
>相关地址：https://github.com/Rich-Harris/headless-qr

一个现代化的 `QR` 生成工具。

### 9.[eslint-plugin-check-file](https://github.com/DukeLuo/eslint-plugin-check-file)
>相关地址：https://github.com/DukeLuo/eslint-plugin-check-file

我猜你肯定听过 [*引入包排序(`simple-import-sort`)*](https://github.com/lydell/eslint-plugin-simple-import-sort)、[*包管理(`eslint-plugin-package-json-dependencies`)*](https://github.com/idan-at/eslint-plugin-package-json-dependencies)等插件。

检测文件名，支持完全受控的文件名，保持项目文件名格式的一致性是一个不错的选择。


**周刊中说了太多次 `so cool`，是因为我最近在看《闪电侠》，“巴里”（作为主人公）很喜欢说的一个词，`waw! so cool~~~`**

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
