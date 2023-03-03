---
template: main.html
---

# Scholar's Weekly 第13期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/kDGDwh.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/barista-pourover-6B1SUAYDO1))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`RTL`*、*`Pnpm`*、*`Atom`*、*`Prerender`*

### 1.[Migrating RTL---By Sentry](https://blog.sentry.io/2023/02/23/sentrys-frontend-tests-migrating-from-enzyme-to-react-testing-library/)
>相关地址：https://blog.sentry.io/2023/02/23/sentrys-frontend-tests-migrating-from-enzyme-to-react-testing-library/

`Sentry` 团队，结合自身产品，阐述了从 `Enzyme` 迁移 `RTL` 的诸多受益：*本特点不再提供中文翻译*


- Enzyme has no plans to support React 18. Where RTL does not rely on React’s internals. and would continue to work the same with React 18 as it did with 16 and 17. (note: there is an unofficial adapter for React 18, but it is not actual, full support).
- Enzyme had only basic support for testing React Hooks.
- An adapter for our tests to work with React would no longer be needed.
- RTL does better accessibility tests by providing role-based selectors.
- RTL avoids some of the pitfalls we ran into with Enzyme like not unmounting components between tests (slow) and directly modifying component state (poor test hygiene).
- RTL is now the more popular choice on npm for testing React components, likely because enzyme doesn’t directly support the latest version of React.

### 2.[Pnpm 7.29.0](https://github.com/pnpm/pnpm/releases/tag/v7.29.0-0)
>相关地址：https://github.com/pnpm/pnpm/releases/tag/v7.29.0-0

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/yCq3kc.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp)

支持了 `dedupe-peer-dependents`，可以按项目适度开启：
- 要求版本相同，则开启，比如 `react`、`react-dom`。
- 要求版本不同，则关闭。

### 3.[使用已建立的 UI 模式模块化 React 应用程序](https://martinfowler.com/articles/modularizing-react-apps.html)
>相关地址：https://martinfowler.com/articles/modularizing-react-apps.html

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/OeRMof.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp)

分层前端的合理性再次被证实，也是笔者一直以来坚持✊的写法，将页面原子化，细化到每一个组件。

### 4.[Prerender pages in Chrome for instant page navigations](https://developer.chrome.com/blog/prerender-pages/)
>相关地址：https://developer.chrome.com/blog/prerender-pages/

一种新的完整的预渲染机制**`NoState Prefetch`** 即将取代 `rel=prerender`。可以暂时关注下，但是现阶段貌似意义不大。

------

## FAQ

### 1.[react-qrcode-logo](https://github.com/gcoro/react-qrcode-logo)
>相关地址：https://github.com/gcoro/react-qrcode-logo

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/tbE59W.png)

最近正好用到这种定制化 `QR.Code` 生成工具。

### 2.[Sonner](https://github.com/emilkowalski/sonner)
>相关地址：https://github.com/emilkowalski/sonner

美而舒适的 **`Toast``** 组件～

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
