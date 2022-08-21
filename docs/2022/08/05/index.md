---
template: main.html
---

# Scholar's Weekly 第5期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/Wj8dWr.jpg){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/ocean-waves-OD9MDQOTAW))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

**关键词：** *`Vitest`*、*`c8`*、*`preload`*、*`设计模式`*、*`web3`*、*`islands`*

## 1. [`Vitest` 发布了 `0.22.0` 的 `Break Changes` 版本](https://github.com/vitest-dev/vitest/releases)

> 相关地址：[https://github.com/vitest-dev/vitest/releases](https://github.com/vitest-dev/vitest/releases)

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/z8GJo6.png)

> c8覆盖率支持现在需要安装同行的依赖项@vitest/coverage-c8。另外，你可以安装 @vitest/coverage-istanbul 来使用 istanbul 覆盖，而不是 c8。

- [istanbul](https://github.com/gotwarlost/istanbul)
- [c8](https://github.com/bcoe/c8)

## 2. [在 `reseter.css` 的 `repo` 中看到一个小技巧](https://github.com/resetercss/reseter.css)

> 相关地址：[https://github.com/resetercss/reseter.css](https://github.com/resetercss/reseter.css)

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/V123HF.png)

正好看到了 `rottenpen` 的周刊中引用了一篇幅 `预加载指南`，这里借链引用下。

- [预加载关键资产以提高加载速度](https://web.dev/preload-critical-assets/)

## 3. [`TypeScript` 中的依赖倒置原则](https://dev.to/jmalvarez/dependency-inversion-principle-in-typescript-4nm0)

> 相关地址：[https://dev.to/jmalvarez/dependency-inversion-principle-in-typescript-4nm0](https://dev.to/jmalvarez/dependency-inversion-principle-in-typescript-4nm0)

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/60orIq.png)

老哥分别 `example` 了使用 `TypeScript` 阐述设计模式中的 `5` 个设计原则。

## 4. [使用 `web3` 对用户身份进行验证](https://dev.to/anggapur/user-authentication-with-web3-4he8)

> 相关地址：[https://dev.to/anggapur/user-authentication-with-web3-4he8](https://dev.to/anggapur/user-authentication-with-web3-4he8)

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/zjEoxR.jpg)

不用收集用户信息，也可识别到用户。

## 5. [`islands-architecture`](https://www.patterns.dev/posts/islands-architecture/)

> 相关地址：[https://www.patterns.dev/posts/islands-architecture](https://www.patterns.dev/posts/islands-architecture)

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/u7TWif.jpg)

最近听到的比较多的一个名词：**孤岛架构**

**代表作**

- [Astro](https://astro.build/)

几个小时前，还看到 **三元同学**基于 `React` 搞了个孤岛架构实现：[基于 React 的 Islands 架构实现](https://github.com/sanyuan0704/react-islands)


## End

最后，简单总结下这一个星期的修炼内容～

比较忙，没做什么大东西，也没有给开源社区做贡献，不过简单做了几个小东西。

#### 1. 花了些时间，去复习了下 `HTTP` 缓存相关的知识，这次比较特殊，除了翻看市面上的文章，特地结合规范去挖了挖。

> 掘金地址：[https://juejin.cn/post/7133579119807168543](https://juejin.cn/post/7133579119807168543)

一点思考：尽信别人的文章，则不如无文章，因为规则、规范是会改变的，但是文章，过去的还是过去的。某种程度上需要不断的、主动的去吸收新的东西。

#### 2. 给 `montagejs` 换了 `vitest` 去做 `test runner`。

因为以前比较熟悉 `jest`，所以此次迁移 `vitest` 几乎无感，比较喜欢 `vitest` 提供的 `ui` 能力，有些像 `cypress`，很好的体验。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/w8XM8l.png)

#### 3. `montagejs` 中新加了两个包

`can i use` 灵感来自于 `CanIUse` 这个网站，例如我想判断 `loading` 在不同的浏览器环境下的 `img` 标签中是否支持等等。

- [`@montagejs/can-i-use`](https://www.npmjs.com/package/@montagejs/can-i-use)

作为轮子，手写了下图片懒加载在 `react` 中的应用，细节拉满。

比如:

- 不支持 `loading` 做降级
- 单页 `SPA`，路由跳转不会二次触发 `load` 或者 `DOMContentLoad`，需要主动触发一下懒加载
- 懒加载的间歇时间，使用预加载弥补（基于设计模式的代理模式实现）

还在完善中，还能进化，先做了简单版本

> 体验地址：[https://montage.bigdreamer.cc/components/mit/react-lazy-load-image](https://montage.bigdreamer.cc/components/mit/react-lazy-load-image)

- [`@montagejs/react-lazy-load-image`](https://www.npmjs.com/package/@montagejs/react-lazy-load-image)

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
