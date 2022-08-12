---
template: main.html
---

# Scholar's Weekly 第4期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/Do7v2a.jpg){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/coastal-island-PNFMDTMB4P))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

**关键词：** *`React`*、*`习惯`*、*`Open Source`*、*`CSS`*、*`esbuild`*、*`typescript`*

## 1. [React re-renders guide](https://www.developerway.com/posts/react-re-renders-guide#part2.1)

`React` 重新渲染指南：一切尽在掌握。

该指南解释了什么是重新渲染，什么是必要的和不必要的重新渲染，什么可以触发 `React` 组件重新渲染。

还包括可以帮助防止重新渲染的最重要的模式和一些导致不必要的重新渲染和性能不佳的反模式。每个模式和反模式都附有视觉帮助和工作代码示例。

## 2. [新拾取的 6 个习惯和方法](https://mp.weixin.qq.com/s/fGYFE3k_P9CiHDJyZUM5IQ)

------ 来自《云谦和他的朋友们》

!!! note "印象比较深刻的一句话"

    「所有问题都应当是简单的」，如果觉得复杂，那一定是因为理解还不够到位。

## 3. [The Three F's of Open Source Development](https://boyter.org/posts/the-three-f-s-of-open-source/)

`Fix it`, `Fork it`, `Fuck off`.

我的理解，上述三个词就是开源开发者的三个境界。最坏的情况就是**滚蛋**，离开原作者的开源仓库（`issue`、`email`、`discussions`）。

## 4. [Finer grained control over CSS transforms with individual transform properties](https://web.dev/css-individual-transform-properties/)

对 `css` 的 `transform` 进行了更细粒度的控制。

```css

@keyframes anim {
    0% { transform: translateX(0%); }
    5% { transform: translateX(5%) rotate(90deg) scale(1.2); }
    10% { transform: translateX(10%) rotate(180deg) scale(1.2); }
    90% { transform: translateX(90%) rotate(180deg) scale(1.2); }
    95% { transform: translateX(95%) rotate(270deg) scale(1.2); }
    100% { transform: translateX(100%) rotate(360deg); }
}

.target {
    animation: anim 2s;
    animation-fill-mode: forwards;
}

```

<iframe width="100%" height="300" allow="accelerometer; camera; encrypted-media; display-capture; geolocation; gyroscope; microphone; midi; clipboard-read; clipboard-write; web-share" allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="result-iframe  " frameborder="0" id="result-iframe" loading="lazy" name="CodePen Preview for CSS Individual Transforms Example #2 (transform)" sandbox="allow-forms allow-modals allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-top-navigation-by-user-activation allow-downloads allow-presentation" scrolling="yes" title="CodePen Preview for CSS Individual Transforms Example #2 (transform)" data-src="https://cdpn.io/web-dot-dev/fullembedgrid/gOeRMZV?animations=run&amp;type=embed" src="https://cdpn.io/web-dot-dev/fullembedgrid/gOeRMZV?animations=run&amp;type=embed">
</iframe>

## 5. [Boost your productivity with TypeScript project references](https://blog.logrocket.com/boost-your-productivity-with-typescript-project-references/)

使用 `TypeScript 3.0` 的 `project references` 特性，来优化编译性能。

总的来说，对于 `MonoRepo` 项目的构建优化绝对是高效的。

国内用户，也可移步 **神光** 大佬的 [TypeScript 编译性能优化：Project Reference](https://mp.weixin.qq.com/s/IJYWOWHWGZSLQT9SukThlA).

## 6. [esbuild 作为压缩器会对 ES5 代码做反向"优化"变成 ES6](https://github.com/umijs/umi/issues/8658)

讨论来自于 `Umi` 社区，之前没怎么注意 `esbuild` 会进行 **反向"优化"**。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/0Lw7Tn.png)

## End

最后，简单总结下这一个星期的修炼内容～

#### 1. 规划了下 `montagejs` 中即将出现的一个新插件 `https-webpack-plugin` 的蓝图。

使用 `mkcert` 在 `webpack-dev-server` 完成的某个阶段，完成自动本地域名 `https` 证书签发。

#### 2. 给 [`dumi`](https://github.com/umijs/dumi) 提了个文档缺失的 [`docs PR`](https://github.com/umijs/dumi/pull/1167) : https://github.com/umijs/dumi/pull/1167

原因是，`docs` 文档目录会自动排出 `fixtures` 目录，这个在文档中并没有体现，但是我在源码中找到了。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/TsWjVs.png)

#### 3. 给 [`react-chrono`](https://github.com/prabhuignoto/react-chrono) 提了个 [`fix PR`](https://github.com/prabhuignoto/react-chrono/pull/282) : https://github.com/prabhuignoto/react-chrono/pull/282

`GitHub` "遗像" 成功躺在了 `3k+` `star` 的仓库里。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/CdsqKB.png)

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
