---
template: main.html
---

# ryanwang's weekly 第38期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/3QlTKm.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/thin-plant-stems-in-sun?c=background))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`Promise.race`*、*`JS Docs`*、*`SSR`*、*`Browser Extension`*

## FE News

### 1.[`Promise.race` 中优雅的处理方案](https://dbushell.com/2024/02/27/a-fun-line-of-code/)
> 相关地址：https://dbushell.com/2024/02/27/a-fun-line-of-code/

```typescript
export const m4aDuration = async (path: string): Promise<number> => {
  const controller = new AbortController();
  const duration = await Promise.race([
    search(path, controller.signal),
    search(path, controller.signal, true)
  ]);
  controller.abort();
  return duration;
};
```

乍一看没啥特别的地方，但是其实细品发现很精髓的，`Promise.race` 虽然只决议最快的一个，但是另外一个 `Promise` 也会在后台继续，要么孤独的被决议，要么被拒绝。

`await` 决议成功后，`controller.abort` 就很好的解决了后台很 `孤独` 的那个 `Promise`。

### 2.[为什么 `is-number` 有这么多的下载量](https://shubhamjain.co/2024/02/29/why-is-number-package-have-59m-downloads/)
>相关地址：https://shubhamjain.co/2024/02/29/why-is-number-package-have-59m-downloads/

`tailwindcss -> chokidar -> braces -> fill-range -> to-regex-range -> is-number` 比如 `tailwind` 中，内部链条已经包含了 `is-number`，一个项目中其他包也依赖了，重复依赖导致了下载量的递增。

我们简单看一下代码：

```typescript
module.exports = function(num) {
  if (typeof num === 'number') {
    return num - num === 0;
  }
  if (typeof num === 'string' && num.trim() !== '') {
    return Number.isFinite ? Number.isFinite(+num) : isFinite(+num);
  }
  return false;
};
```

代码量其实很少，像这类代码可以手写的，不用在项目内部特意的安装。

### 3.[用 JavaScript 重写 17 个改变世界的方程式](https://runjs.app/blog/equations-that-changed-the-world-rewritten-in-javascript)
>相关地址：https://runjs.app/blog/equations-that-changed-the-world-rewritten-in-javascript

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/Y6XHvP.png)

不明觉厉。

### 4.[Js Docs 作为替代 TypeScript 的全集指南](https://alexharri.com/blog/jsdoc-as-an-alternative-typescript-syntax)
> 相关地址：https://alexharri.com/blog/jsdoc-as-an-alternative-typescript-syntax

我个人看法：不太感兴趣，我比较倾向于手写 `TypeScript`。

### 5.[Waku](https://waku.gg/)
> 相关地址：https://waku.gg/

一个小型的 `SSR` 框架，某些功能缺失，不太建议在生产使用，但是它的一些卖点很好：

```typescript
// ./src/entries.tsx
import { createPages } from 'waku';

import { RootLayout } from './templates/root-layout.js';
import { HomePage } from './templates/home-page.js';

export default createPages(async ({ createPage, createLayout }) => {
  // Create root layout
  createLayout({
    render: 'static',
    path: '/',
    component: RootLayout,
  });

  // Create home page
  createPage({
    render: 'dynamic',
    path: '/',
    component: HomePage,
  });
});
```

比如路由的管理，比 `Next.js` 强大太多了。

### 6.[Wxt 下一代浏览器插件编写框架](https://github.com/wxt-dev/wxt)
> 相关地址：https://github.com/wxt-dev/wxt

用于创建跨浏览器扩展的框架。您可以针对 `Chrome`、`Firefox`、`Edge` 和 `Safari` 进行定位。`Plasmo` 是此领域中的另一个选择。


## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
