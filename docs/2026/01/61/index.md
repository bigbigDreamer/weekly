---
template: main.html
---

# ryanwang's weekly 第61期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/source/01eIxJ.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_30/format,webp){ loading=lazy }

(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/dusty-rose))


------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`Temporal API`*、 *`React 19.2`*、*`Node.js Security`*

## FE News

### 1.[Chrome 144 正式支持 Temporal API](https://javascriptweekly.com/link/179129/rss)
> 相关地址：https://javascriptweekly.com/link/179129/rss

Chrome 144 本周发布，带来了对 Temporal API 的完整原生支持。这是 JavaScript 处理日期和时间的现代化替代方案，终于要告别令人头疼的 `Date` 对象了。

Temporal API 提供了更直观、更强大的日期时间处理能力，包括：
- 更清晰的 API 设计
- 原生支持时区处理
- 不可变对象设计
- 更好的日期计算支持

这是 JavaScript 生态系统的一个重要里程碑。

### 2.[React 19.2 的 useEffectEvent 解决闭包难题](https://react.statuscode.com/issues/457)
> 相关地址：https://react.statuscode.com/issues/457

React 19.2 引入的新 `useEffectEvent` Hook 终于解决了长期困扰开发者的 stale closure 问题。这个新 Hook 让开发者能够更简洁地管理副作用，而无需处理复杂的依赖数组。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/source/useEffectEvent.png)

主要特性：
- 避免 `useEffect` 中的闭包陷阱
- 简化事件处理逻辑
- 更好的性能表现
- 减少不必要的重新渲染

### 3.[Node.js 多版本安全更新发布](https://javascriptweekly.com/link/178118/rss)
> 相关地址：https://javascriptweekly.com/link/178118/rss

Node.js 针对 20.x、22.x、24.x 和 25.x 版本发布了期待已久的安全更新，修复了 5 个不同的漏洞。建议所有 Node.js 用户尽快更新到最新版本。

这次更新涵盖了运行时的多个关键安全问题，强烈建议生产环境尽快升级。

### 4.[JavaScript 依赖管理问题探讨](https://javascriptweekly.com/link/179113/rss)
> 相关地址：https://javascriptweekly.com/link/179113/rss

Web 标准专家 Lea Verou 深入分析了为什么 JavaScript 的依赖管理仍然如此复杂，并探讨了简化开发者引入和管理外部代码的潜在解决方案。

文章探讨了：
- 当前依赖管理的痛点
- 为什么会变得如此复杂
- 可能的改进方向
- 社区的探索实践

### 5.[Vercel 发布 React AI 最佳实践指南](https://react.statuscode.com/issues/458)
> 相关地址：https://react.statuscode.com/issues/458

Vercel 将十多年的 React 和 Next.js 优化经验整理成 Markdown 指南，专门为 AI 编码代理（如 Claude Code 和 OpenCode）设计。这些资源旨在帮助 AI 工具编写更高质量的 React 代码。

这标志着 AI 辅助编程进入了新阶段，将人类的最佳实践系统化地传授给 AI。

### 6.[Bun v1.3.6 发布](https://javascriptweekly.com/link/179119/rss)
> 相关地址：https://javascriptweekly.com/link/179119/rss

Bun 运行时发布 v1.3.6 版本，带来了以下新特性：

- 通过 `Bun.Archive` 支持 tar 归档
- 新增 `Bun.JSONC` 用于解析带注释的 JSON
- 多项性能优化

Bun 继续在性能和开发体验上不断改进，为 JavaScript 生态提供更多选择。

### 7.[React Conf 2025 完整视频上线](https://javascriptweekly.com/link/179114/rss)
> 相关地址：https://javascriptweekly.com/link/179114/rss

React Conf 2025 的完整视频合集现已上线，包含 25 场演讲和 23 场访谈，其中包括与四位核心团队成员的访谈，以及 Tanner Linsley、Delba de Oliveira 和 Kent C. Dodds 等知名开发者的分享。

这是了解 React 最新发展和未来方向的绝佳资源。


## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
