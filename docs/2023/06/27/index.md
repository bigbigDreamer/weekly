---
template: main.html
---

# ryanwang's weekly 第27期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/ut3YYI.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/man-hiking-ZG6VSR9UTT))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`unsuckjs.com`*、*`TypeScript`*、*`Event Loop`*、*`CSS In JS`*

### 1.[unsuckjs.com](https://github.com/adamghill/unsuckjs.com)
>相关地址：https://github.com/adamghill/unsuckjs.com

使用轻量级 `JavaScript` 库逐步增强 `HTML`。

更多的有些类似：**awesome**，但是添加了一些横向对比参照。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/d40U7u.png)

### 2.[TypeScript 5.2 的新关键字：“using”](https://www.totaltypescript.com/typescript-5-2-new-keyword-using)
>相关地址：https://www.totaltypescript.com/typescript-5-2-new-keyword-using

`TypeScript 5.2` 中即将新迎来一个关键字：`using`，**当函数离开作用域时，您可以使用它来处理任何内容。** 这就是主要的能力。

```typescript
import { open } from "node:fs/promises";
const getFileHandle = async (path: string) => {
  const filehandle = await open(path, "r");
  return {
    filehandle,
    [Symbol.asyncDispose]: async () => {
      await filehandle.close();
    },
  };
};
{
  await using file = getFileHandle("thefile.txt");
  // Do stuff with file.filehandle
} // Automatically disposed!
```

如上所述，我们不必在 `try...finally` 中去释放资源，更多的动机详见：[ECMAScript 显式资源管理](https://github.com/tc39/proposal-explicit-resource-management)

### 3.[可视化的形式了解 Node.js 事件循环完整指南](https://www.builder.io/blog/visual-guide-to-nodejs-event-loop#conclusion)
> 相关地址；https://www.builder.io/blog/visual-guide-to-nodejs-event-loop#conclusion

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/Um6OLN.png)

共计 `7` 个系列，推荐阅读：

- [第 1 部分：可视化 Node.js 事件循环](https://www.builder.io/blog/visual-guide-to-nodejs-event-loop)
- [第 2 部分：在 Node.js 中可视化 nextTick 和 Promise 队列](https://www.builder.io/blog/NodeJS-visualizing-nextTick-and-promise-queues)
- [第 3 部分：在 Node.js 中可视化计时器队列](https://www.builder.io/blog/visualizing-nodejs-timer-queue)
- [第 4 部分：可视化 Node.js 事件循环中的 I/O 队列](https://www.builder.io/blog/visualizing-nodejs-io-queue)
- [第 5 部分：可视化 Node.js 事件循环中的 I/O 轮询](https://www.builder.io/blog/visualizing-nodejs-io-polling)
- [第 6 部分：可视化 Node.js 事件循环中的检查队列](https://www.builder.io/blog/visualizing-nodejs-check-queue)
- [第 7 部分：可视化 Node.js 事件循环中的关闭队列](https://www.builder.io/blog/visualizing-nodejs-close-queue)

### 4.[toad-scheduler](https://github.com/kibertoad/toad-scheduler)
> 相关地址：https://github.com/kibertoad/toad-scheduler

内存中的TypeScript作业调度器，在指定的时间间隔内重复执行给定的任务（例如，"每20秒"）。如果你需要的话，也支持Cron语法。

### 5.[tesseract.js 4.1.1 发布](https://github.com/naptha/tesseract.js/releases/tag/v4.1.1)
>相关地址：https://github.com/naptha/tesseract.js/releases/tag/v4.1.1

修复了处理使用 `iOS` 设备拍摄图像的关键错误。

### 6.[Panda CSS](https://panda-css.com/docs/why-panda#the-new-era-of-css-in-js)
> 相关地址：https://panda-css.com/docs/why-panda#the-new-era-of-css-in-js

社区已经有很多 `CSS In JS` 的方案和库了，但是在 `chakra ui` 背后的光环人物，带着一个新的解决方案出现了；

动机：

- 消除糟糕的运行时开销；
- 以支持 `SRC` 和 `SSR` 作为主要动机；

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
