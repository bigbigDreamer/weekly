---
template: main.html
---

# Scholar's Weekly 第6期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/ThuO4R.jpg){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/surfers-beach-4RUHVKXOYI))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

**关键词：** *`react`*、*`img`*、*`fetchpriority`*、*`noopener`*、*`csp`*


## 1. [million-react](https://github.com/aidenybai/million-react)

> 相关地址：[https://github.com/aidenybai/million-react](https://github.com/aidenybai/million-react)

下面是 [`白宇彤`](https://github.com/aidenybai)，对于 `million` 与 `react` 的相关对比输出。

<iframe width="560" height="315" src="https://www.youtube.com/embed/KgnSM9NbV2s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

**背景**

> Many Virtual DOM libraries still struggle with render speed compared to newer methods of rendering.
> 
> 与较新的渲染方法相比，许多虚拟DOM库仍然在渲染速度上挣扎。
> 
> 相关地址：[https://krausest.github.io/js-framework-benchmark/current.html](https://krausest.github.io/js-framework-benchmark/current.html)

一些有价值的亮点：

- Lightweight
    - `tree-shaking` & `bundle` 后 `< 1kb`。
- Performance
    - 使用最新的编译器性能优化。
- Compiler-first
    - 编译器优先
    - 对编译器的全类支持
- .....

## 2. [Use fetchpriority=high to load your LCP hero image sooner](https://addyosmani.com/blog/fetch-priority/)

> 相关地址：[https://addyosmani.com/blog/fetch-priority/](https://addyosmani.com/blog/fetch-priority/)

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/ynyibZ.jpg)

```html
<!-- Increase the priority of this LCP hero image --> 
<img src="hero-image.jpg" fetchpriority="high" alt="Hero">

<!-- Decrease the priority for this above-the-fold image --> 
<img src="happy-cats.avif" fetchpriority="low" alt="Cat">

<!-- The third-party contents of this iframe load with a low priority --> 
<iframe src="https://youtu.be/JfVOS4VSpmA" fetchpriority="low"></iframe>

<script> 
// Trigger a fetch with low priority 
let suggestedContent = await fetch("/content/suggested", {priority: "low"}); 
</script>

// Scripts that are not critical can also be loaded with low-priority 
<script src="blocking_but_unimportant.js" fetchpriority="low"></script>

```

**优先级和预加载的不同点是什么？**

- `rel=preload` 当浏览器发现资源（例如，解析器不可见的东西，如背景图像或需要首先加载脚本的资源）时，将其视为一种调整方式会很有帮助。
- 优先级提示让您调整资源加载的优先级（独立于发现）。


## 3. [About rel=noopener](https://mathiasbynens.github.io/rel-noopener/#hax)

> 相关地址：[https://mathiasbynens.github.io/rel-noopener/#hax](https://mathiasbynens.github.io/rel-noopener/#hax)
> 
> 相关 `PR` 地址：[https://github.com/whatwg/html/pull/4330](https://github.com/whatwg/html/pull/4330)

关于 `rel=noopener` 这个属性，可能有些鲜为人知，也可能大部分小伙伴都是知道的，这里还是作为周刊内容再次分享。

```html
<!-- 跳转过后无前一个页面的 `window` 操作权 -->
<a rel="noopener" href="https://baidu.com" target="_blank">百度一下</a>
<!-- 跳转过后有前一个页面的 `window` 操作权 -->
<a rel="opener" href="https://baidu.com" target="_blank">百度一下，并使原页面加载一个广告页</a>
```

可以作为安全的一个话题：`postMessage`、`origin location`......

## 4. [为什么我在你的网站上看不到 `CSP`](https://drewjarrett.medium.com/why-cant-i-see-a-content-security-policy-on-your-website-d1b5ba064ea3)
> 相关地址：[https://drewjarrett.medium.com/why-cant-i-see-a-content-security-policy-on-your-website-d1b5ba064ea3](https://drewjarrett.medium.com/why-cant-i-see-a-content-security-policy-on-your-website-d1b5ba064ea3)

- 完全不知道 `CSP` 是啥。
- 觉得很混乱，有那么多防止 `XSS` 的手段。
- 一直在妨碍`营销`（（： 例如广告位资源的加载等），必须设置 `src` 白名单才能正确加载
- ......

## End

最后，简单总结下这一个星期的修炼内容～

这个星期比较忙碌，工作之余的时间在看一些已经淡忘或者模糊的内容。

预计下个星期恢复正常，基本每个月都会抽一个星期去复习看重要的知识。

作为友链，对齐一下大佬周刊： [rottenpen's FE News](https://rottenpen.zhubai.love/posts/2175567962508746752)

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
